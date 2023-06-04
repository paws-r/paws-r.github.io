<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_describe_function</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets configuration information and metadata about a CloudFront function, but not the function's code

### Description

Gets configuration information and metadata about a CloudFront function,
but not the function's code. To get a function's code, use
`get_function`.

To get configuration information and metadata about a function, you must
provide the function's name and stage. To get these values, you can use
`list_functions`.

### Usage

    cloudfront_describe_function(Name, Stage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_describe_function_:_Name">Name</code></td>
<td><p>[required] The name of the function that you are getting
information about.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_describe_function_:_Stage">Stage</code></td>
<td><p>The function's stage, either <code>DEVELOPMENT</code> or
<code>LIVE</code>.</p></td>
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
      ),
      ETag = "string"
    )

### Request syntax

    svc$describe_function(
      Name = "string",
      Stage = "DEVELOPMENT"|"LIVE"
    )
