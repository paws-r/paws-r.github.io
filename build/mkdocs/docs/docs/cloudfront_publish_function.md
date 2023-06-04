<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_publish_function</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Publishes a CloudFront function by copying the function code from the DEVELOPMENT stage to LIVE

### Description

Publishes a CloudFront function by copying the function code from the
`DEVELOPMENT` stage to `LIVE`. This automatically updates all cache
behaviors that are using this function to use the newly published copy
in the `LIVE` stage.

When a function is published to the `LIVE` stage, you can attach the
function to a distribution's cache behavior, using the function's Amazon
Resource Name (ARN).

To publish a function, you must provide the function's name and version
(`ETag` value). To get these values, you can use `list_functions` and
`describe_function`.

### Usage

    cloudfront_publish_function(Name, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_publish_function_:_Name">Name</code></td>
<td><p>[required] The name of the function that you are
publishing.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_publish_function_:_IfMatch">IfMatch</code></td>
<td><p>[required] The current version (<code>ETag</code> value) of the
function that you are publishing, which you can get using
<code>describe_function</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FunctionSummary = list(
        Name = "string",
        Status = "string",
        FunctionConfig = list(
          Comment = "string",
          Runtime = "cloudfront-js-1.0"
        ),
        FunctionMetadata = list(
          FunctionARN = "string",
          Stage = "DEVELOPMENT"|"LIVE",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$publish_function(
      Name = "string",
      IfMatch = "string"
    )
