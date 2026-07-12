window.MathJax = {
  tex: {
    tags: "ams",
    // Local override: single-dollar inline math is disabled so dollar
    // amounts in prose ("$30-40M ... $150M+") are never parsed as math.
    // Use \( ... \) for inline math and $$ ... $$ for display math.
    inlineMath: [["\\(", "\\)"]],
  },
  options: {
    renderActions: {
      addCss: [
        200,
        function (doc) {
          const style = document.createElement("style");
          style.innerHTML = `
          .mjx-container {
            color: inherit;
          }
        `;
          document.head.appendChild(style);
        },
        "",
      ],
    },
  },
};
