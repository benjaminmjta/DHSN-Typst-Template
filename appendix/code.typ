// Code mit codefigure-Funktion -> siehe _functions.typ
// Codeblöcke werden automatisch in tocfiles/loc.typ eingetragen, aber nur wenn mit der Funktion codefigure() erstellt
#import "../_functions.typ": *
#show: codly-init.with()

= Quellcode

== Rust Beispiel

#codefigure("hello world beispiel", [
    ```rust
    pub fn main() {
        println!("Hello, world!");
    }
    ```
])