<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_batch_update_standards_control_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For a batch of security controls and standards, this operation updates the enablement status of a control in a standard

### Description

For a batch of security controls and standards, this operation updates
the enablement status of a control in a standard.

### Usage

    securityhub_batch_update_standards_control_associations(
      StandardsControlAssociationUpdates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_batch_update_standards_control_associations_:_StandardsControlAssociationUpdates">StandardsControlAssociationUpdates</code></td>
<td><p>[required] Updates the enablement status of a security control in
a specified standard.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UnprocessedAssociationUpdates = list(
        list(
          StandardsControlAssociationUpdate = list(
            StandardsArn = "string",
            SecurityControlId = "string",
            AssociationStatus = "ENABLED"|"DISABLED",
            UpdatedReason = "string"
          ),
          ErrorCode = "INVALID_INPUT"|"ACCESS_DENIED"|"NOT_FOUND"|"LIMIT_EXCEEDED",
          ErrorReason = "string"
        )
      )
    )

### Request syntax

    svc$batch_update_standards_control_associations(
      StandardsControlAssociationUpdates = list(
        list(
          StandardsArn = "string",
          SecurityControlId = "string",
          AssociationStatus = "ENABLED"|"DISABLED",
          UpdatedReason = "string"
        )
      )
    )
