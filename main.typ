#import "@preview/touying:0.6.1": *
#import themes.simple: *
#import "@preview/cetz:0.3.2"
#import "@preview/codly:1.0.0": *
#import "@preview/fontawesome:0.5.0": *

#let cetz-canvas = touying-reducer.with(reduce: cetz.canvas, cover: cetz.draw.hide.with(bounds: true))
#show: simple-theme.with(aspect-ratio: "16-9",
  title: [ Speed, versatility, and joy - don't chose only two!],
  subtitle: [Computational biology in Julia for fun and profit],
  footer: [Kevin Bonham, PhD | BHCSD Seminar, May 2025]
)

#show: codly-init.with()

#set text(22pt, font: "Liberation Sans")

#title-slide[
  = Speed, versatility, and joy - don't chose only two!
  == Computational biology in Julia for fun and profit

  #v(2em)

  Kevin Bonham, PhD

  2025-05-28
]

== Outline

#slide[
  #set text(28pt)
- About me
- Why Julia?
- Getting started with julia

]

= About me 

#figure(image("assets/narcissus.jpg"), numbering: none, caption:[
  #text(15pt, fill: gray)[https://en.wikipedia.org/wiki/Narcissus_(Caravaggio)]
])


== At the bench - small molecule inhibitors of T-cells

#slide[
- B.S. from UCSD in Biochemistry and Cell biology
- Postbac with Kerry Mowen - chemical inhibitors of
  protein arginine methyl-transferases (PRMTs)
][
  #figure(
    image("assets/prmt-fig2b.png", width: 60%),
    )
  #figure(
    image("assets/prmt-fig5b.png", width: 50%),
    )

]

== At the bench - Toll-like receptor signaling

#slide(composer: (50%, 50%))[
    - Investigation of the cell-biology of TIRAP,
      an adaptor protein    - Established literature showed TIRAP was confined to the plasma membrane
      (eg TLR4, responding to LPS)
    - TIRAP KO macrophages could still respond with endosomal TLRs (eg TLR9, responding to CpG)

    #text(11pt)[Bonham, _et. al._, _Cell_ (2014)]

    #text(11pt)[Brubaker, Bonham, _et. al._, _Ann. Rev. Immunol._ (2014)]
][
    #figure(
        image("assets/tlr-review-fig2.jpg", width:67%)
    )

]


== Transition to Computing - HGT in Cheese-associated bacteria

#slide[

#v(2em)
#figure(image("assets/cheese-fig1.jpg", width: 90%))

#v(3em)
#text(11pt)[Wolfe, _et. al._, _Cell_ (2014)]

]


== `Kvasir` - A python package for HGT discovery

#slide[
    #figure(
    cetz-canvas({
    import cetz.draw: *
    content((0, 0), [#image("assets/kvasir_plot-1.png", width: 530pt)])
    (pause,)
    content((0, 0), [#image("assets/kvasir_plot-2.png", width: 530pt)])
    (pause,)
    content((0, 0), [#image("assets/kvasir_plot-3.png", width: 530pt)])
    (pause,)
    content((0, 0), [#image("assets/kvasir_plot-4.png", width: 530pt)])
    (pause,)
    content((0, 0), [#image("assets/kvasir_plot-5.png", width: 530pt)])
    }))
]



#slide(composer: (50%,50%))[
    #figure(
        image("assets/elife-fig1a.png", width: 84%)
    )

    
][
    - ~200 cheese-associated isolates
    - > 200 putative HGT genomic regions
    - > 4700 proteing coding genes
    - enriched for iron transport / siderophore capture

    #v(6em)
    #text(11pt)[Bonham, _et. al._, _eLife_ (2017)]
]


== Multi-'omics and Data Science - Human microbiome epidemiology

#slide[
    #v(1em)
    #figure(
        image("assets/arthritis-fig2.png", width: 100%)
    )
    #v(1.5em)

    #text(11pt)[Thompson, _et. al._, _Sci. Transl. Med._ (2023)]
]


== The gut microbiome and brain development

#slide[
    #v(1em)
    #figure(
        cetz-canvas({
        import cetz.draw: *
        content((0, 0), [#image("assets/resonance-fig1.jpg", width: 760pt)], name:"fig")
        rect("fig.south-east", (0,4), fill:white, stroke: none)
        (pause,)
        content((0, 0), [#image("assets/resonance-fig1.jpg", width: 760pt)], name:"fig")
        })
    )

    #v(1em)
    #text(11pt)[Bonham, _et. al._, _Sci. Adv._ (2023)]
]

#slide[
    #v(1em)
    #figure(
        image("assets/resonance-fig3.jpg", width: 103%)
    )
    #v(1em)
    #text(11pt)[Bonham, _et. al._, _Sci. Adv._ (2023)]
]

#slide[
    #figure(
        image("assets/resonance-fig4.jpg", width: 74%)
    )
]

== Immune dysregulation in Long-COVID

#slide(composer: (50%, 50%))[
    - Post-acute sequelae of COVID-19 (PASC) or "Long-COVID" is a constellation
      of persistent symptoms
    - Affecting between 5% and 20% of acute COVID (pre-vaccine)
    - Unknown etiology
    - Investigated ~7k blood proteins in matched PASC / COVID-recovered cohort

    #v(2em)
    #text(11pt)[Woodruff and Bonham, _et. al._, _Nat. Comm._ (2023)]
][
    #figure(
        image("assets/pasc-fig1.png", width: 80%)
    )
]

#slide[
    #figure(
        image("assets/pasc-fig2.png", width: 90%)
    )
    #text(11pt)[Woodruff and Bonham, _et. al._, _Nat. Comm._ (2023)]
]

#slide[
    #v(2em)
    #figure(
        image("assets/pasc-fig3.png")
    )
    #text(11pt)[Woodruff and Bonham, _et. al._, _Nat. Comm._ (2023)]
]

== Current Work: SpatialOmics.jl

#slide[
  #set align(center)
  #image("assets/cu_grids.png", width: 80%)]

#slide(composer: (2fr,2fr))[
  #image("assets/ln_contour.png", width: 100%)
][
  #image("assets/ln_heat.png", width: 100%)
]


= Why Julia?

== My Julia journey

#slide(composer:(2fr,2fr))[
  #v(-2em)
  #set align(center)
  #image("assets/stackoverflow-first.png", width: 83%)
  #image("assets/julia-pr.png", width: 76%)
][
  #pause
- First language I tried to learn (c. 2014, `julia v0.3`)#pause
- Stopped in favor of python until May \2017#pause
- Hooked when I implemented min-hash sketch just based on equation
  in paper, and it was _fast_#pause
- First registered package (`Microbiome.jl`) Oct 2017
- First PR to julia language in 2018
]


== Why _not_ julia

- You have everything you need in the language you're using,
  it's performant (enough), and you don't expect that to change #pause
- You do not struggle with dependencies, environments, or reproducibility #pause
- You sometimes need new functionality, but you are not interested in "rolling your own" #pause
- If you hit performance bottlenecks, you'd rather wait for someone else to solve them

== The two language problem

#slide(composer: (1fr,1fr))[
  - In interactive languages, performance-critical code
    is written in compiled language
  - Splits community of users and developers
    (the "two cultures problem")
  - Makes it difficult for domain-experts to contribute
][
  #v(-3em)
  #cetz-canvas({
    import cetz.draw: *

    content((0,0), image("assets/lng_numpy.png", width: 9em))
    content((0,-7), image("assets/lng_pytorch.png",width: 11em))
  })
]
// pause
#slide(composer: (1fr,1fr))[
  - In interactive languages, performance-critical code
    is written in compiled language
  - Splits community of users and developers
    (the "two cultures problem")
  - Makes it difficult for domain-experts to contribute
][
  #cetz-canvas({
    import cetz.draw: *

    content((0,0), image("assets/lng_purrr.png", width: 12em))
    content((0,-6), image("assets/lng_pak.png",width: 11em))
  })

]


== Julia (mostly) doesn't have a 2 language problem

#cetz-canvas({
  import cetz.draw: *

  content((0,0), image("assets/lng_dataframes.png", width: 13em))
  content((0,-4), image("assets/lng_cuda.png",width: 13em))
  content((12,0), image("assets/lng_mlj.png", width: 13em))
  content((12,-4), image("assets/lng_images.png", width: 13em))
})

== Julia code is Just-In-Time (JIT) compiled

#slide(composer: (3fr,2fr))[
#set text(17pt)
#codly(zebra-fill:none, display-name:false)
```julia
function show_compilation(n)
    return n + 1
end
```
#image("assets/compilation_1.png")
][
- code goes through multiple passes
- ultimately passed to LLVM for compilation
- only compiled for the types that it needs
]

== Julia is (or can be) fast!

#align(center, image("assets/speed_vs_codesize_comparison.jpg", width: 75%))

== Code in julia is reusable and extensible (multiple-dispatch)

#slide(composer: (1fr,1fr))[
#figure(
  image("assets/compose.png", width: 104%),
)
][
  #set text(18pt)
  - Plotting a `ODESolution` object from `DifferentialEquations.jl`
    - containing `Measurement`s from `Measurements.jl`
  - plots solutions of the Lotka-Volterra system (lines) 
    with correct error bounds
  - Neither of these packages has code 
    for handling types of the other package.

  #text(12pt)[
    Plots Paper - DOI: 10.5334/jors.431

    The unreasonable effectiveness of multiple-dispatch:
    https://www.youtube.com/watch?v=kc9HwsxE1OY]
]

== Package / environment manager (`Pkg.jl`) is built-in

#slide(composer: (1fr,1fr))[
  - Pkg REPL mode accessed by pressing `]`
  - Direct dependencies and compat stored in `Project.toml`
  - Full environment with explicit versions stored in `Manifest.toml`
  - strict adherence to SemVer
  - Recreating environment as simple as `] instantiate`
][
  #image("assets/pkg.png")
]

== Run Shell programs

#align(center, image("assets/shell-mode.png"))

== `BinaryBuilder.jl` facilitates cross-platform compilation

#align(center, image("assets/bowtie_shell.png"))

== Run python or R code with PythonCall.jl, RCall.jl, and CondaPkg.jl

#slide[
  #set align(center)
  #image("assets/rcall.png")
  #pause
][
  #set align(center)
  #image("assets/pythoncall.png")
]

= Getting started with julia

== Installation with `juliaup`

- inspired by `rustup`
- `curl -fsSL https://install.julialang.org | sh`
- also available from the Windows store

#image("assets/juliaup.png")

== Use any text editor (VS Code is well supported)

#align(center, image("assets/vscode.png", width: 63%))

#focus-slide()[== Syntax Demo]

== Useful Ecosystems for Bioinformatics and Data Science

- BioJulia: https://biojulia.dev
  - Efficient sequence types
  - parsers for common formats,
    Automa.jl to generate FSM-based parsers
  - `SingleCellProjections.jl` and `BioMakie.jl` #pause
- JuliaData:
  - `DataFrames.jl`, `CSV.jl`, `Tables.jl`
  - Databases (`DuckDB.jl`, `SQLite.jl`, etc) #pause
- `Pluto.jl` - interactive notebooks #pause
- JuliaImages
- SciML / `DifferentialEquations.jl`: https://sciml.ai
- `Turing.jl` - Bayesian statistics




== Resources

*Note: TMC network blocks github.io domains*

- Modern julia workflows: https://modernjuliaworkflows.org
- Why julia Manifesto: https://github.com/Datseris/whyjulia-manifesto
- Learn julia in Y minutes: https://learnxinyminutes.com/julia
- Julia Zero2Hero: https://github.com/Datseris/Zero2Hero-JuliaWorkshop/
- Julia documentation: https://docs.julialang.org
- Julia communities (slack, discourse): https://julialang.org/community/
- BioJulia Tutorials: https://biojulia.dev/BioTutorials

== Contact info

#slide(composer: (2fr,3fr))[
#figure(image("assets/narcissus.jpg", width:75%), numbering: none, caption:[
  #text(15pt, fill: gray)[https://en.wikipedia.org/wiki/Narcissus_(Caravaggio)]
])

][
- #fa-icon("github", font: "Font Awesome 6 Pro Solid") / #fa-icon("gitlab", font: "Font Awesome 6 Pro Solid"): `@kescobo`
- 🔬🌐(WIP) - https://lab.bonham.ch
- 🙋🌐 - https://blog.bonham.ch
- Julia slack/discourse/zulip etc - just search my name
- 🦋 https://bsky.app/\@kevinbonham.com
]
