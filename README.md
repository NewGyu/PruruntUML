# Motivation
Although I love [PlantUML](https://plantuml.com/en/), it is harder to use it on Web Browser than [Marmaid.js](https://mermaid-js.github.io/) which is built with pure JavaScript.

The following points make it hard.

* PlantUML depends on Graphviz.
* PlantUML is built with Java, and Applet has been died.

These points mean that server-side environment such as [PlantUML Server](https://plantuml.com/en/server) is required to run it. As an idea, I think WASM will solve the problems.

# High Level Goal
- [ ] Easy to embed UML diagram to your site such as Wiki without server environment.
- [ ] The diagram is not as static image file, but dinamically generated from puml notation text. It will enable you to embed something like Live Editor to your page.
- [ ] Support various diagrams supported by original PlantUML. Such as Class Diagram, Sequence, Activity and etc.
- [ ] Enable to export various image format, such as svg, png and etc.
- [ ] Enable to use as a VSCode Extension. (Current PlantUML extension requires Java and Graphviz, it makes us hard to set up.)

# High Level Idea

* Rewrite PlantUML in Rust with wasm-pack.
  * WASM can be run on Browser-side easily.
  * Rust has powerful eco system to make WASM app.
  * Written in Rust and run as wasm might be faster than JavaScript.
* To distribute as a npm package will enable frontend developers to embed the dinamic diagram generating feature to their site easily.
