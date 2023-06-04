<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_get_triggers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of resource metadata for a given list of trigger names

### Description

Returns a list of resource metadata for a given list of trigger names.
After calling the `list_triggers` operation, you can call this operation
to access the data to which you have been granted permissions. This
operation supports all IAM permissions, including permission conditions
that uses tags.

### Usage

    glue_batch_get_triggers(TriggerNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_batch_get_triggers_:_TriggerNames">TriggerNames</code></td>
<td><p>[required] A list of trigger names, which may be the names
returned from the <code>list_triggers</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Triggers = list(
        list(
          Name = "string",
          WorkflowName = "string",
          Id = "string",
          Type = "SCHEDULED"|"CONDITIONAL"|"ON_DEMAND"|"EVENT",
          State = "CREATING"|"CREATED"|"ACTIVATING"|"ACTIVATED"|"DEACTIVATING"|"DEACTIVATED"|"DELETING"|"UPDATING",
          Description = "string",
          Schedule = "string",
          Actions = list(
            list(
              JobName = "string",
              Arguments = list(
                "string"
              ),
              Timeout = 123,
              SecurityConfiguration = "string",
              NotificationProperty = list(
                NotifyDelayAfter = 123
              ),
              CrawlerName = "string"
            )
          ),
          Predicate = list(
            Logical = "AND"|"ANY",
            Conditions = list(
              list(
                LogicalOperator = "EQUALS",
                JobName = "string",
                State = "STARTING"|"RUNNING"|"STOPPING"|"STOPPED"|"SUCCEEDED"|"FAILED"|"TIMEOUT"|"ERROR"|"WAITING",
                CrawlerName = "string",
                CrawlState = "RUNNING"|"CANCELLING"|"CANCELLED"|"SUCCEEDED"|"FAILED"|"ERROR"
              )
            )
          ),
          EventBatchingCondition = list(
            BatchSize = 123,
            BatchWindow = 123
          )
        )
      ),
      TriggersNotFound = list(
        "string"
      )
    )

### Request syntax

    svc$batch_get_triggers(
      TriggerNames = list(
        "string"
      )
    )
