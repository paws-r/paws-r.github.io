<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_label_parameter_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A parameter label is a user-defined alias to help you manage different versions of a parameter

### Description

A parameter label is a user-defined alias to help you manage different
versions of a parameter. When you modify a parameter, Amazon Web
Services Systems Manager automatically saves a new version and
increments the version number by one. A label can help you remember the
purpose of a parameter when there are multiple versions.

Parameter labels have the following requirements and restrictions.

-   A version of a parameter can have a maximum of 10 labels.

-   You can't attach the same label to different versions of the same
    parameter. For example, if version 1 has the label Production, then
    you can't attach Production to version 2.

-   You can move a label from one version of a parameter to another.

-   You can't create a label when you create a new parameter. You must
    attach a label to a specific version of a parameter.

-   If you no longer want to use a parameter label, then you can either
    delete it or move it to a different version of a parameter.

-   A label can have a maximum of 100 characters.

-   Labels can contain letters (case sensitive), numbers, periods (.),
    hyphens (-), or underscores (\_).

-   Labels can't begin with a number, "`aws`" or "`ssm`" (not case
    sensitive). If a label fails to meet these requirements, then the
    label isn't associated with a parameter and the system displays it
    in the list of InvalidLabels.

### Usage

    ssm_label_parameter_version(Name, ParameterVersion, Labels)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_label_parameter_version_:_Name">Name</code></td>
<td><p>[required] The parameter name on which you want to attach one or
more labels.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_label_parameter_version_:_ParameterVersion">ParameterVersion</code></td>
<td><p>The specific version of the parameter on which you want to attach
one or more labels. If no version is specified, the system attaches the
label to the latest version.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_label_parameter_version_:_Labels">Labels</code></td>
<td><p>[required] One or more labels to attach to the specified
parameter version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InvalidLabels = list(
        "string"
      ),
      ParameterVersion = 123
    )

### Request syntax

    svc$label_parameter_version(
      Name = "string",
      ParameterVersion = 123,
      Labels = list(
        "string"
      )
    )
