---
marp: true
paginate: true
---

<style>
:root {
    font-size: 20px;
}
td {
    width: 1000px;
}
table {
    width: 100%;
}
img {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 60%;
}
</style>

# simpleFoam : prototype-with-wheel-spin tutorial

- Case: /home/openfoam/data/prototype-with-wheel-spin
- Submission: 05:33:26 on Jun 24 2025
- Report time: 05:34:08 on Jun 24 2025

---

## Run information

| Property       | Value              |
|----------------|--------------------|
| Host           | 698830f4bdab        |
| Processors     | 6      |
| Time steps     | 400  |
| Initial deltaT | 1 |
| Current deltaT | 1 |
| Execution time | {{EXECUTIONTIME}}  |

---

## OpenFOAM information

| Property       | Value              |
|----------------|--------------------|
| Version        | 2412     |
| API            | 2412         |
| Patch          | 0       |
| Build          | _2c4871ff-20250317       |
| Architecture   | LSB;label=32;scalar=64  |

---

## Mesh statistics

| Property          | Value                |
|-------------------|----------------------|
| Bounds            | (-5 -4 0)(15 4 8) |
| Number of cells   | 161462   |
| Number of faces   | 504783   |
| Number of points  | 182674  |
| Number of patches | 10 |

---

## Linear solvers

| Property | Value          | tolerance(rel)   | Tolerance(abs)      |
|----------|----------------|------------------|---------------------|
| p        | `GAMG` | 1e-07 | 0.01 |
| U        | `smoothSolver` | 1e-08 | 0.1 |

---

## Numerical scehemes

The chosen divergence schemes comprised:

~~~
divSchemes
{
    default         none;
    div(phi,U)      bounded Gauss linearUpwindV grad(U);
    turbulence      bounded Gauss upwind;
    div(phi,k)      bounded Gauss upwind;
    div(phi,omega)  bounded Gauss upwind;
    div((nuEff*dev2(T(grad(U))))) Gauss linear;
}

~~~

---

## Graphs

Residuals

![](/home/openfoam/data/prototype-with-wheel-spin/postProcessing/residualGraph1/400/residualGraph1.svg)

---

## Results

Forces

![](/home/openfoam/data/prototype-with-wheel-spin/postProcessing/forceCoeffsGraph1/400/forceCoeffsGraph1.svg)

---

Made using Open&nabla;FOAM v2412 from https://openfoam.com

