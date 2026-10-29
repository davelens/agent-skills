import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";
import { chmodSync, writeFileSync } from "node:fs";

const output = process.env.PI_INITIAL_TOKENS_CAPTURE;
let audit: Record<string, unknown> = {};

export default function (pi: ExtensionAPI) {
  pi.on("before_agent_start", (event) => {
    audit = { systemPromptOptions: event.systemPromptOptions };
  });

  // Runs before every provider call on every transport, unlike before_provider_request.
  pi.on("context_with_system", (event) => {
    if (!output) process.exit(2);
    writeFileSync(output, JSON.stringify({
      ...audit,
      system: event.messages.find((message) => message.role === "system"),
      activeTools: pi.getActiveTools(),
      allTools: pi.getAllTools(),
    }));
    chmodSync(output, 0o600);
    process.exit(0);
  });
}
