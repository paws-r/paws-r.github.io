<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_create_backup_selection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a JSON document that specifies a set of resources to assign to a backup plan

### Description

Creates a JSON document that specifies a set of resources to assign to a
backup plan. For examples, see [Assigning resources
programmatically](https://docs.aws.amazon.com/aws-backup/latest/devguide/assigning-resources.html#assigning-resources-json).

### Usage

    backup_create_backup_selection(BackupPlanId, BackupSelection,
      CreatorRequestId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_create_backup_selection_:_BackupPlanId">BackupPlanId</code></td>
<td><p>[required] Uniquely identifies the backup plan to be associated
with the selection of resources.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_create_backup_selection_:_BackupSelection">BackupSelection</code></td>
<td><p>[required] Specifies the body of a request to assign a set of
resources to a backup plan.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_create_backup_selection_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>A unique string that identifies the request and allows failed
requests to be retried without the risk of running the operation twice.
This parameter is optional.</p>
<p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.'
characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SelectionId = "string",
      BackupPlanId = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_backup_selection(
      BackupPlanId = "string",
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
      CreatorRequestId = "string"
    )
