<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_test_function</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tests a CloudFront function

### Description

Tests a CloudFront function.

To test a function, you provide an *event object* that represents an
HTTP request or response that your CloudFront distribution could receive
in production. CloudFront runs the function, passing it the event object
that you provided, and returns the function's result (the modified event
object) in the response. The response also contains function logs and
error messages, if any exist. For more information about testing
functions, see [Testing
functions](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function)
in the *Amazon CloudFront Developer Guide*.

To test a function, you provide the function's name and version (`ETag`
value) along with the event object. To get the function's name and
version, you can use `list_functions` and `describe_function`.

### Usage

    cloudfront_test_function(Name, IfMatch, Stage, EventObject)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_test_function_:_Name">Name</code></td>
<td><p>[required] The name of the function that you are
testing.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_test_function_:_IfMatch">IfMatch</code></td>
<td><p>[required] The current version (<code>ETag</code> value) of the
function that you are testing, which you can get using
<code>describe_function</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudfront_test_function_:_Stage">Stage</code></td>
<td><p>The stage of the function that you are testing, either
<code>DEVELOPMENT</code> or <code>LIVE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_test_function_:_EventObject">EventObject</code></td>
<td><p>[required] The event object to test the function with. For more
information about the structure of the event object, see <a
href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function">Testing
functions</a> in the <em>Amazon CloudFront Developer
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TestResult = list(
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
        ComputeUtilization = "string",
        FunctionExecutionLogs = list(
          "string"
        ),
        FunctionErrorMessage = "string",
        FunctionOutput = "string"
      )
    )

### Request syntax

    svc$test_function(
      Name = "string",
      IfMatch = "string",
      Stage = "DEVELOPMENT"|"LIVE",
      EventObject = raw
    )
