<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_batch_get_standards_control_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For a batch of security controls and standards, identifies whether each control is currently enabled or disabled in a standard

### Description

For a batch of security controls and standards, identifies whether each
control is currently enabled or disabled in a standard.

### Usage

    securityhub_batch_get_standards_control_associations(
      StandardsControlAssociationIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_batch_get_standards_control_associations_:_StandardsControlAssociationIds">StandardsControlAssociationIds</code></td>
<td><p>[required] An array with one or more objects that includes a
security control (identified with <code>SecurityControlId</code>,
<code>SecurityControlArn</code>, or a mix of both parameters) and the
Amazon Resource Name (ARN) of a standard. This field is used to query
the enablement status of a control in a specified standard. The security
control ID or ARN is the same across standards.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StandardsControlAssociationDetails = list(
        list(
          StandardsArn = "string",
          SecurityControlId = "string",
          SecurityControlArn = "string",
          AssociationStatus = "ENABLED"|"DISABLED",
          RelatedRequirements = list(
            "string"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedReason = "string",
          StandardsControlTitle = "string",
          StandardsControlDescription = "string",
          StandardsControlArns = list(
            "string"
          )
        )
      ),
      UnprocessedAssociations = list(
        list(
          StandardsControlAssociationId = list(
            SecurityControlId = "string",
            StandardsArn = "string"
          ),
          ErrorCode = "INVALID_INPUT"|"ACCESS_DENIED"|"NOT_FOUND"|"LIMIT_EXCEEDED",
          ErrorReason = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_standards_control_associations(
      StandardsControlAssociationIds = list(
        list(
          SecurityControlId = "string",
          StandardsArn = "string"
        )
      )
    )
