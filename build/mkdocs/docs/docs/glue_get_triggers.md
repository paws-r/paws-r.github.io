<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_triggers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets all the triggers associated with a job

### Description

Gets all the triggers associated with a job.

### Usage

    glue_get_triggers(NextToken, DependentJobName, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_triggers_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_triggers_:_DependentJobName">DependentJobName</code></td>
<td><p>The name of the job to retrieve triggers for. The trigger that
can start this job is returned, and if there is no such trigger, all
triggers are returned.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_get_triggers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of the response.</p></td>
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
      NextToken = "string"
    )

### Request syntax

    svc$get_triggers(
      NextToken = "string",
      DependentJobName = "string",
      MaxResults = 123
    )
