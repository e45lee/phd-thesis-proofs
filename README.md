# PhD thesis proofs

Rocq mechanizations for my PhD thesis.

## Building

Requires Rocq 9.1.1 (Stdlib included); no other dependencies.

    make          # check all proofs (single Rocq project, _CoqProject)
    make html     # coqdoc into html/

## Layout

Each directory is one calculus with its own logical root, so all of them
build together.

| Directory | Calculus | Thesis |
|---|---|---|
| `Fq/` | System F<:Q | Ch. 3, §3.5–§3.6 |
| `FqExt/` | Extended F<:Q (arbitrary bounded lattice) | Ch. 3, §3.7 |
| `Fm/` | System F<:QM | Ch. 4, §4.1.2 |
| `Fac/` | System F<:C / F<:QC | Ch. 4, §4.2.2 and §4.3 |
| `Fa/` | System F<:QA | Ch. 4, §4.4 |
| `Fb/` | System F<:B | Ch. 5, §5.2–§5.3 |
| `FbArb/` | F<:B over an arbitrary Boolean algebra | not stated (generalizes Ch. 5) |
| `Fbe/` | System F<:BE | Ch. 5, §5.4 |
| `FbeArb/` | F<:BE over an arbitrary Boolean algebra | not stated (generalizes Ch. 5) |
| `Lm/` | untyped calculus with seals | Ch. 4, §4.1.1 |
| `Fam/` | System F<:M | Ch. 2, §2.1.2 (figures only) |
| `Common/` | `Label`, `LabelMap`, `Tactics`, `Signatures`, `Lattice` | — |
| `Metalib/` | Metalib (Rocq 9 port) | — |

