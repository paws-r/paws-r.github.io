<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_create_action_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a custom action target in Security Hub

### Description

Creates a custom action target in Security Hub.

You can use custom actions on findings and insights in Security Hub to
trigger target actions in Amazon CloudWatch Events.

### Usage

    securityhub_create_action_target(Name, Description, Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="securityhub_create_action_target_:_Name">Name</code></td>
<td><p>[required] The name of the custom action target. Can contain up
to 20 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_create_action_target_:_Description">Description</code></td>
<td><p>[required] The description for the custom action target.</p></td>
</tr>
<tr class="odd">
<td><code id="securityhub_create_action_target_:_Id">Id</code></td>
<td><p>[required] The ID for the custom action target. Can contain up to
20 alphanumeric characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActionTargetArn = "string"
    )

### Request syntax

    svc$create_action_target(
      Name = "string",
      Description = "string",
      Id = "string"
    )

### Examples

    ## Not run: 
    # The following example creates a custom action target in Security Hub.
    # Custom actions on findings and insights automatically trigger actions in
    # Amazon CloudWatch Events.
    svc$create_action_target(
      Description = "Action to send the finding for remediation tracking",
      Id = "Remediation",
      Name = "Send to remediation"
    )

    ## End(Not run)
