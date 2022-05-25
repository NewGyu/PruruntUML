# Motivation
Although I love [PlantUML](https://plantuml.com/en/), it is harder to use it on Web Browser than [Marmaid.js](https://mermaid-js.github.io/) which is built with pure JavaScript.

The following points make it hard.

* PlantUML depends on Graphviz.
* PlantUML is built with Java, and Applet has died.

These points mean that server-side environment such as [PlantUML Server](https://plantuml.com/en/server) is required to run it. As an idea, I think WASM will solve the problems.

# High-Level Goals
- [ ] Easy to embed UML diagram to your site such as Wiki without server environment.
- [ ] The diagram is not a static image file, but dinamically generated from puml text notation. It will enable you to embed something like Live Editor to your page.
- [ ] Support various diagrams supported by original PlantUML. Such as Class Diagram, Sequence, Activity and etc.
- [ ] Enable to export various image format, such as svg, png and etc.
- [ ] Enable to use as a VSCode Extension. (Current PlantUML extension requires Java and Graphviz and it makes us hard to set it up.)

# High-Level Ideas

* Rewrite PlantUML in Rust with wasm-pack.
  * WASM can be run on Browser-side easily.
  * Rust has powerful eco system to make WASM app.
  * Writing in Rust and running as wasm might be faster than JavaScript.
* Distributing as a npm package will enable frontend developers to embed the dynamic diagram generating feature to their site easily.
