<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_describe_framework</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the framework details for the specified FrameworkName

### Description

Returns the framework details for the specified `FrameworkName`.

### Usage

    backup_describe_framework(FrameworkName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_describe_framework_:_FrameworkName">FrameworkName</code></td>
<td><p>[required] The unique name of a framework.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FrameworkName = "string",
      FrameworkArn = "string",
      FrameworkDescription = "string",
      FrameworkControls = list(
        list(
          ControlName = "string",
          ControlInputParameters = list(
            list(
              ParameterName = "string",
              ParameterValue = "string"
            )
          ),
          ControlScope = list(
            ComplianceResourceIds = list(
              "string"
            ),
            ComplianceResourceTypes = list(
              "string"
            ),
            Tags = list(
              "string"
            )
          )
        )
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      DeploymentStatus = "string",
      FrameworkStatus = "string",
      IdempotencyToken = "string"
    )

### Request syntax

    svc$describe_framework(
      FrameworkName = "string"
    )
