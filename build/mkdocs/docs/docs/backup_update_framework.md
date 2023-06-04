<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_update_framework</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing framework identified by its FrameworkName with the input document in JSON format

### Description

Updates an existing framework identified by its `FrameworkName` with the
input document in JSON format.

### Usage

    backup_update_framework(FrameworkName, FrameworkDescription,
      FrameworkControls, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_update_framework_:_FrameworkName">FrameworkName</code></td>
<td><p>[required] The unique name of a framework. This name is between 1
and 256 characters, starting with a letter, and consisting of letters
(a-z, A-Z), numbers (0-9), and underscores (_).</p></td>
</tr>
<tr class="even">
<td><code
id="backup_update_framework_:_FrameworkDescription">FrameworkDescription</code></td>
<td><p>An optional description of the framework with a maximum 1,024
characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_update_framework_:_FrameworkControls">FrameworkControls</code></td>
<td><p>A list of the controls that make up the framework. Each control
in the list has a name, input parameters, and scope.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_update_framework_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>A customer-chosen string that you can use to distinguish between
otherwise identical calls to <code>UpdateFrameworkInput</code>. Retrying
a successful request with the same idempotency token results in a
success message with no action taken.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FrameworkName = "string",
      FrameworkArn = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_framework(
      FrameworkName = "string",
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
      IdempotencyToken = "string"
    )
