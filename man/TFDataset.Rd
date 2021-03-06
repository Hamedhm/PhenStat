\name{TFDataset}
\alias{TFDataset}
\title{Method "TFDataset"}
\description{  
    Removes of all non-concurrent batches from the dataset. 
    Returns dataset suitable for TF framework or original dataset if data removal was not successful. 
}    
\usage{
    TFDataset(phenList, depVariable, outputMessages=TRUE, forDecisionTree = FALSE)
}
\arguments{
    \item{phenList}{instance of the \code{\linkS4class{PhenList}} class; mandatory argument}       
    \item{depVariable}{a character string defining the dependent variable of interest; mandatory argument}
    \item{outputMessages}{flag: "FALSE" value to suppress output messages; "TRUE" value to show output messages; 
        default value TRUE}   
    \item{forDecisionTree}{flag: "FALSE" value for normal procedure; 
        "TRUE" value to indicate that is called form decisionTree function; default value FALSE}      
}
\value{
    Returns dataset suitable for TF framework or original dataset if data removal was not successful. 
}

\references{
    Karp N, Melvin D, Sanger Mouse Genetics Project, Mott R (2012): Robust and Sensitive Analysis of Mouse Knockout Phenotypes. \emph{PLoS ONE} \bold{7}(12): e52410. doi:10.1371/journal.pone.0052410
    
    West B, Welch K, Galecki A (2007): Linear Mixed Models: A practical guide using statistical software  \emph{New York: Chapman & Hall/CRC} 353 p.
}
\author{Natalja Kurbatova, Natasha Karp, Jeremy Mason}

\seealso{\code{\linkS4class{PhenList}}}

\examples{
    file <- system.file("extdata", "test1.csv", package="PhenStat")
    test <- PhenList(dataset=read.csv(file),
            testGenotype="Sparc/Sparc")
    test2 <- TFDataset(test,"Lean.Mass")
}