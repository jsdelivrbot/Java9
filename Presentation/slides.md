## Java 9 and Interface overused
---
## Agenda
1.  Java 9
2.  Interface Usage

---
## Java 9

1.  Jshell
2.  Jlink
3.  Modules
---

## Jshell Demo
Project Kulla (REPL) Read-eval-Print Loop

---

## Jlink Demo

Create Runtime Image
---

## Modules

Before  Jigsaw
1.  Classpath Hell
2.  NoClassDefFoundError at runtime (2 version of 3rd pary jar in classpath)
1.  Java 8 and below not know about their own dependeci

---
## Jigsaw
Basically, a module is nothing more than a good old JAR file, compiled from good old Java files. But there is one crucial difference: one of the files is called module-info.java. As the name suggests, it declares our module. It defines

---

## Jigsaw

1.  the unique name of our module
2.  which other modules our module depends on
3.  which packages are to be exported to be used by other modules

---

## Modules

Example For Swing: 

![](images/javafx.swing-graph.png)

---
## Modules
Declaration:

module-info.java

<code>
module packA.module {


}
</code>


---
## Demo

---
## Interfaces

### Definition
---


## Interface

In Object Oriented Programming an Interface is a description of all functions that object must have in order to be an "X". The purpose of interfaces is to allow the computer to enforce these properties and to know that an object of TYPE T (whatever the interface is ) must have functions called X,Y,Z, etc.

---

## Interface Use Case
1.  More than one implementation of a common interface
2.  Public library such as Nuget Package (you don't have control over it)
3.  When a single class is playing multiple roles. Implement many interfaces

---
##Interfaces Demo
---



