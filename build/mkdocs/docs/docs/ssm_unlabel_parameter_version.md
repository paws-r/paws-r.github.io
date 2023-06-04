<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_unlabel_parameter_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove a label or labels from a parameter

### Description

Remove a label or labels from a parameter.

### Usage

    ssm_unlabel_parameter_version(Name, ParameterVersion, Labels)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_unlabel_parameter_version_:_Name">Name</code></td>
<td><p>[required] The name of the parameter from which you want to
delete one or more labels.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_unlabel_parameter_version_:_ParameterVersion">ParameterVersion</code></td>
<td><p>[required] The specific version of the parameter which you want
to delete one or more labels from. If it isn't present, the call will
fail.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_unlabel_parameter_version_:_Labels">Labels</code></td>
<td><p>[required] One or more labels to delete from the specified
parameter version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RemovedLabels = list(
        "string"
      ),
      InvalidLabels = list(
        "string"
      )
    )

### Request syntax

    svc$unlabel_parameter_version(
      Name = "string",
      ParameterVersion = 123,
      Labels = list(
        "string"
      )
    )
