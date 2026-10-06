\name{foo}
\alias{foo}
\title{Foo}
\usage{
foo(config = list(), credentials = list(), endpoint = NULL, region = NULL)
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.
\itemize{
\item{\strong{credentials}: \itemize{
\item{\strong{creds}: \itemize{
\item{\strong{access_key_id}: AWS access key ID}
\item{\strong{secret_access_key}: AWS secret access key}
}}
\item{\strong{profile}: The name of a profile to use.}
}}
\item{\strong{endpoint}: The complete URL to use for the constructed client.}
}}

\item{endpoint}{Optional shorthand for complete URL to use for the constructed client.}
}
\value{
A client for the service. You can call the service's operations using
syntax like \code{svc$operation(...)}.
}
\description{
First paragraph of the description, with an \href{https://example.com}{example link}.

Second paragraph of the description.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- foo(
  config = list(),
  endpoint = "string"
)
}\if{html}{\out{</div>}}
}

\section{Operations}{

\tabular{ll}{
\link[=foo_bar]{bar} \tab Does a bar\cr
\link[=foo_baz]{baz} \tab Does a baz
}
}

\examples{
\dontrun{
svc <- foo()
svc$bar(
  Foo = 123
)
}

}
