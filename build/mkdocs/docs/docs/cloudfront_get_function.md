<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_function</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the code of a CloudFront function

### Description

Gets the code of a CloudFront function. To get configuration information
and metadata about a function, use `describe_function`.

To get a function's code, you must provide the function's name and
stage. To get these values, you can use `list_functions`.

### Usage

    cloudfront_get_function(Name, Stage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_get_function_:_Name">Name</code></td>
<td><p>[required] The name of the function whose code you are
getting.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_get_function_:_Stage">Stage</code></td>
<td><p>The function's stage, either <code>DEVELOPMENT</code> or
<code>LIVE</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FunctionCode = raw,
      ETag = "string",
      ContentType = "string"
    )

### Request syntax

    svc$get_function(
      Name = "string",
      Stage = "DEVELOPMENT"|"LIVE"
    )
