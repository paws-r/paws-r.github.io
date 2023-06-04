<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_create_framework</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a framework with one or more controls

### Description

Creates a framework with one or more controls. A framework is a
collection of controls that you can use to evaluate your backup
practices. By using pre-built customizable controls to define your
policies, you can evaluate whether your backup practices comply with
your policies and which resources are not yet in compliance.

### Usage

    backup_create_framework(FrameworkName, FrameworkDescription,
      FrameworkControls, IdempotencyToken, FrameworkTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_create_framework_:_FrameworkName">FrameworkName</code></td>
<td><p>[required] The unique name of the framework. The name must be
between 1 and 256 characters, starting with a letter, and consisting of
letters (a-z, A-Z), numbers (0-9), and underscores (_).</p></td>
</tr>
<tr class="even">
<td><code
id="backup_create_framework_:_FrameworkDescription">FrameworkDescription</code></td>
<td><p>An optional description of the framework with a maximum of 1,024
characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_create_framework_:_FrameworkControls">FrameworkControls</code></td>
<td><p>[required] A list of the controls that make up the framework.
Each control in the list has a name, input parameters, and
scope.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_create_framework_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>A customer-chosen string that you can use to distinguish between
otherwise identical calls to <code>CreateFrameworkInput</code>. Retrying
a successful request with the same idempotency token results in a
success message with no action taken.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_create_framework_:_FrameworkTags">FrameworkTags</code></td>
<td><p>Metadata that you can assign to help organize the frameworks that
you create. Each tag is a key-value pair.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FrameworkName = "string",
      FrameworkArn = "string"
    )

### Request syntax

    svc$create_framework(
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
      IdempotencyToken = "string",
      FrameworkTags = list(
        "string"
      )
    )
