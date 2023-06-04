<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_trigger</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a trigger definition

### Description

Updates a trigger definition.

### Usage

    glue_update_trigger(Name, TriggerUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_update_trigger_:_Name">Name</code></td>
<td><p>[required] The name of the trigger to update.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_trigger_:_TriggerUpdate">TriggerUpdate</code></td>
<td><p>[required] The new values with which to update the
trigger.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Trigger = list(
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
    )

### Request syntax

    svc$update_trigger(
      Name = "string",
      TriggerUpdate = list(
        Name = "string",
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
    )
