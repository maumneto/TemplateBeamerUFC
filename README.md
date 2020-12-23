# What is it?

This project aims to create a template for presentation for the Federal University of Ceará (UFC). It was created a class called **ufc_format.cls** with a set of environments and commands related to the document.

## For Whom?
This template can be useful for the Federal University of Ceará (UFC) professors and students.

## Tips of this Template
Some tips for using this template

### Blocks

- Default Block
```tex
    \begin{block}{Default Block}
        Body of default block.
    \end{block}
```

- Alert Block
```tex
    \begin{alertblock}{Alert Block}
        Body of alert block.
    \end{alertblock}
```

- Example Block
```tex
    \begin{exampleblock}{Example Block}
        Body of example block.
    \end{exampleblock}
```

### Texts

- Example text
```tex
 \example{Text Example}
```

- Emphasis text
```tex
 \emph{Text emphasis}
```

### Boxes

- Simple Box

```tex
\simplebox{testando o simple box}
```

- Alert Box

```tex
\alertbox{testando o alert box}
```

- Success Box

```tex
\successbox{testando o success box}
```

### Codes
It is possible to insert codes in this presentation. This template uses two packages for algorithms: `algorithm2e` and `listings`. 

- **Documentation** 
  - algorithm2e: [Algorithm2e Package Documentation](http://linorg.usp.br/CTAN/macros/latex/contrib/algorithm2e/doc/algorithm2e.pdf)
  - listings: [Listings Package Documentation](http://linorg.usp.br/CTAN/macros/latex/contrib/listings/listings.pdf)

The following example shows how to create a pseudocode:
```tex
\begin{algorithm}[H]
    \SetAlgoLined #includes indentation
    \LinesNumbered #includes lines number
    \SetKwInOut{Input}{input}
    \SetKwInOut{Output}{output}
    \Input{write the input}
    \Output{write the output}
    \KwData{write the data}
    \KwResult{Write the result}
    initialization\;
    \While{While condition}
    {
        instructions\;
        \eIf{condition}{
           instructions1\;
           instructions2\;
           }{
           instructions3\;
        }
    } 
    \caption{How to write algorithms}
\end{algorithm}
```

The following example shows how to insert a code that is in the project files:

```tex
\begin{frame}{Including Codes}
    \lstset{language=Python}
    \lstinputlisting[language=Python]{path_of_python_code.py}
\end{frame}
```