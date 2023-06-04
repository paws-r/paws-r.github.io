<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get information about one or more parameters by specifying multiple parameter names

### Description

Get information about one or more parameters by specifying multiple
parameter names.

To get information about a single parameter, you can use the
`get_parameter` operation instead.

### Usage

    ssm_get_parameters(Names, WithDecryption)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_get_parameters_:_Names">Names</code></td>
<td><p>[required] Names of the parameters for which you want to query
information.</p>
<p>To query by parameter label, use <code>"Name": "name:label"</code>.
To query by parameter version, use
<code>"Name": "name:version"</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_parameters_:_WithDecryption">WithDecryption</code></td>
<td><p>Return decrypted secure string value. Return decrypted values for
secure string parameters. This flag is ignored for <code>String</code>
and <code>StringList</code> parameter types.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Parameters = list(
        list(
          Name = "string",
          Type = "String"|"StringList"|"SecureString",
          Value = "string",
          Version = 123,
          Selector = "string",
          SourceResult = "string",
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          ARN = "string",
          DataType = "string"
        )
      ),
      InvalidParameters = list(
        "string"
      )
    )

### Request syntax

    svc$get_parameters(
      Names = list(
        "string"
      ),
      WithDecryption = TRUE|FALSE
    )
