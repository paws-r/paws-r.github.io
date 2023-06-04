<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_function</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a CloudFront function

### Description

Updates a CloudFront function.

You can update a function's code or the comment that describes the
function. You cannot update a function's name.

To update a function, you provide the function's name and version
(`ETag` value) along with the updated function code. To get the name and
version, you can use `list_functions` and `describe_function`.

### Usage

    cloudfront_update_function(Name, IfMatch, FunctionConfig, FunctionCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_update_function_:_Name">Name</code></td>
<td><p>[required] The name of the function that you are
updating.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_update_function_:_IfMatch">IfMatch</code></td>
<td><p>[required] The current version (<code>ETag</code> value) of the
function that you are updating, which you can get using
<code>describe_function</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_function_:_FunctionConfig">FunctionConfig</code></td>
<td><p>[required] Configuration information about the function.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_update_function_:_FunctionCode">FunctionCode</code></td>
<td><p>[required] The function code. For more information about writing
a CloudFront function, see <a
href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html">Writing
function code for CloudFront Functions</a> in the <em>Amazon CloudFront
Developer Guide</em>.</p></td>
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

    svc$update_function(
      Name = "string",
      IfMatch = "string",
      FunctionConfig = list(
        Comment = "string",
        Runtime = "cloudfront-js-1.0"
      ),
      FunctionCode = raw
    )
