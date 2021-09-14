import { defineMermaidSetup } from "@slidev/types";

export default defineMermaidSetup(() => {
  return {
    theme: "default",
    er: {
      layoutDirection: "LR",
      minEntityHeight: 60,
    },
  };
});
