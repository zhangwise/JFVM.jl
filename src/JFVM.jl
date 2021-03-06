module JFVM

using PyPlot, PyCall
# I prefer not to use the following command for the issues that it has on windows machines
# pygui_start(:wx)
@pyimport mayavi.mlab as mayavis

export MeshStructure, BoundaryCondition, CellValue, FaceValue,
       arithmeticMean, geometricMean, harmonicMean, upwindMean, linearMean,
       tvdMean, createBC, boundaryConditionTerm, cellBoundary,
       divergenceTerm, gradientTerm, convectionUpwindTerm,
       convectionTerm, convectionTvdTerm, diffusionTerm, createCellVariable,
       createFaceVariable, copyCell, fluxLimiter, createMesh1D,
       createMesh2D, createMesh3D, createMeshRadial2D, createMeshCylindrical2D,
       createMeshCylindrical3D, createMeshCylindrical1D, solveLinearPDE,
       visualizeCells, linearSourceTerm, constantSourceTerm, transientTerm,
       solveMUMPSLinearPDE, faceEval, cellEval, permfieldlogrndg, permfieldlogrnde

include("fvmToolTypes.jl")
include("meshstructure.jl")
include("boundarycondition.jl")
include("domainVariables.jl")
include("diffusionterms.jl")
include("transientTerms.jl")
include("domainOperators.jl")
include("convectionTerms.jl")
include("averagingTerms.jl")
include("calculusTerms.jl")
include("sourceTerms.jl")
include("solveVisualizePDE.jl")
include("JFVMtools.jl")

end # module
