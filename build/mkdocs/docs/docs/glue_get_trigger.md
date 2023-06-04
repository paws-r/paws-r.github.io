<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_trigger</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the definition of a trigger

### Description

Retrieves the definition of a trigger.

### Usage

    glue_get_trigger(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_trigger_:_Name">Name</code></td>
<td><p>[required] The name of the trigger to retrieve.</p></td>
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

    svc$get_trigger(
      Name = "string"
    )
