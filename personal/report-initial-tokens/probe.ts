import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";
import { chmodSync, writeFileSync } from "node:fs";

const output = process.env.PI_INITIAL_TOKENS_CAPTURE;
let audit: Record<string, unknown> = {};

export default function (pi: ExtensionAPI) {
  pi.on("before_agent_start", (event) => {
    audit = {
      systemPrompt: event.systemPrompt,
      systemPromptOptions: event.systemPromptOptions,
      activeTools: pi.getActiveTools(),
      allTools: pi.getAllTools(),
    };
  });

  pi.on("before_provider_request", (event) => {
    if (!output) process.exit(2);
    writeFileSync(output, JSON.stringify({ ...audit, payload: event.payload }));
    chmodSync(output, 0o600);
    process.exit(0);
  });
}
