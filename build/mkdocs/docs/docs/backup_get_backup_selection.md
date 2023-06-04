<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_get_backup_selection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns selection metadata and a document in JSON format that specifies a list of resources that are associated with a backup plan

### Description

Returns selection metadata and a document in JSON format that specifies
a list of resources that are associated with a backup plan.

### Usage

    backup_get_backup_selection(BackupPlanId, SelectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_get_backup_selection_:_BackupPlanId">BackupPlanId</code></td>
<td><p>[required] Uniquely identifies a backup plan.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_get_backup_selection_:_SelectionId">SelectionId</code></td>
<td><p>[required] Uniquely identifies the body of a request to assign a
set of resources to a backup plan.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupSelection = list(
        SelectionName = "string",
        IamRoleArn = "string",
        Resources = list(
          "string"
        ),
        ListOfTags = list(
          list(
            ConditionType = "STRINGEQUALS",
            ConditionKey = "string",
            ConditionValue = "string"
          )
        ),
        NotResources = list(
          "string"
        ),
        Conditions = list(
          StringEquals = list(
            list(
              ConditionKey = "string",
              ConditionValue = "string"
            )
          ),
          StringNotEquals = list(
            list(
              ConditionKey = "string",
              ConditionValue = "string"
            )
          ),
          StringLike = list(
            list(
              ConditionKey = "string",
              ConditionValue = "string"
            )
          ),
          StringNotLike = list(
            list(
              ConditionKey = "string",
              ConditionValue = "string"
            )
          )
        )
      ),
      SelectionId = "string",
      BackupPlanId = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      CreatorRequestId = "string"
    )

### Request syntax

    svc$get_backup_selection(
      BackupPlanId = "string",
      SelectionId = "string"
    )
