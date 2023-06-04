<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_function</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a CloudFront function

### Description

Creates a CloudFront function.

To create a function, you provide the function code and some
configuration information about the function. The response contains an
Amazon Resource Name (ARN) that uniquely identifies the function.

When you create a function, it's in the `DEVELOPMENT` stage. In this
stage, you can test the function with `test_function`, and update it
with `update_function`.

When you're ready to use your function with a CloudFront distribution,
use `publish_function` to copy the function from the `DEVELOPMENT` stage
to `LIVE`. When it's live, you can attach the function to a
distribution's cache behavior, using the function's ARN.

### Usage

    cloudfront_create_function(Name, FunctionConfig, FunctionCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_create_function_:_Name">Name</code></td>
<td><p>[required] A name to identify the function.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_create_function_:_FunctionConfig">FunctionConfig</code></td>
<td><p>[required] Configuration information about the function,
including an optional comment and the function's runtime.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_create_function_:_FunctionCode">FunctionCode</code></td>
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
      Location = "string",
      ETag = "string"
    )

### Request syntax

    svc$create_function(
      Name = "string",
      FunctionConfig = list(
        Comment = "string",
        Runtime = "cloudfront-js-1.0"
      ),
      FunctionCode = raw
    )
