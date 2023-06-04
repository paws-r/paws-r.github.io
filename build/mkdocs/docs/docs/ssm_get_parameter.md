<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_parameter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get information about a single parameter by specifying the parameter name

### Description

Get information about a single parameter by specifying the parameter
name.

To get information about more than one parameter at a time, use the
`get_parameters` operation.

### Usage

    ssm_get_parameter(Name, WithDecryption)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_get_parameter_:_Name">Name</code></td>
<td><p>[required] The name of the parameter you want to query.</p>
<p>To query by parameter label, use <code>"Name": "name:label"</code>.
To query by parameter version, use
<code>"Name": "name:version"</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_parameter_:_WithDecryption">WithDecryption</code></td>
<td><p>Return decrypted values for secure string parameters. This flag
is ignored for <code>String</code> and <code>StringList</code> parameter
types.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Parameter = list(
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
    )

### Request syntax

    svc$get_parameter(
      Name = "string",
      WithDecryption = TRUE|FALSE
    )
