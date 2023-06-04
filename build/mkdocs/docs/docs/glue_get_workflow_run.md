<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_workflow_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the metadata for a given workflow run

### Description

Retrieves the metadata for a given workflow run.

### Usage

    glue_get_workflow_run(Name, RunId, IncludeGraph)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_workflow_run_:_Name">Name</code></td>
<td><p>[required] Name of the workflow being run.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_workflow_run_:_RunId">RunId</code></td>
<td><p>[required] The ID of the workflow run.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_workflow_run_:_IncludeGraph">IncludeGraph</code></td>
<td><p>Specifies whether to include the workflow graph in response or
not.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Run = list(
        Name = "string",
        WorkflowRunId = "string",
        PreviousRunId = "string",
        WorkflowRunProperties = list(
          "string"
        ),
        StartedOn = as.POSIXct(
          "2015-01-01"
        ),
        CompletedOn = as.POSIXct(
          "2015-01-01"
        ),
        Status = "RUNNING"|"COMPLETED"|"STOPPING"|"STOPPED"|"ERROR",
        ErrorMessage = "string",
        Statistics = list(
          TotalActions = 123,
          TimeoutActions = 123,
          FailedActions = 123,
          StoppedActions = 123,
          SucceededActions = 123,
          RunningActions = 123,
          ErroredActions = 123,
          WaitingActions = 123
        ),
        Graph = list(
          Nodes = list(
            list(
              Type = "CRAWLER"|"JOB"|"TRIGGER",
              Name = "string",
              UniqueId = "string",
              TriggerDetails = list(
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
              ),
              JobDetails = list(
                JobRuns = list(
                  list(
                    Id = "string",
                    Attempt = 123,
                    PreviousRunId = "string",
                    TriggerName = "string",
                    JobName = "string",
                    StartedOn = as.POSIXct(
                      "2015-01-01"
                    ),
                    LastModifiedOn = as.POSIXct(
                      "2015-01-01"
                    ),
                    CompletedOn = as.POSIXct(
                      "2015-01-01"
                    ),
                    JobRunState = "STARTING"|"RUNNING"|"STOPPING"|"STOPPED"|"SUCCEEDED"|"FAILED"|"TIMEOUT"|"ERROR"|"WAITING",
                    Arguments = list(
                      "string"
                    ),
                    ErrorMessage = "string",
                    PredecessorRuns = list(
                      list(
                        JobName = "string",
                        RunId = "string"
                      )
                    ),
                    AllocatedCapacity = 123,
                    ExecutionTime = 123,
                    Timeout = 123,
                    MaxCapacity = 123.0,
                    WorkerType = "Standard"|"G.1X"|"G.2X"|"G.025X"|"G.4X"|"G.8X",
                    NumberOfWorkers = 123,
                    SecurityConfiguration = "string",
                    LogGroupName = "string",
                    NotificationProperty = list(
                      NotifyDelayAfter = 123
                    ),
                    GlueVersion = "string",
                    DPUSeconds = 123.0,
                    ExecutionClass = "FLEX"|"STANDARD"
                  )
                )
              ),
              CrawlerDetails = list(
                Crawls = list(
                  list(
                    State = "RUNNING"|"CANCELLING"|"CANCELLED"|"SUCCEEDED"|"FAILED"|"ERROR",
                    StartedOn = as.POSIXct(
                      "2015-01-01"
                    ),
                    CompletedOn = as.POSIXct(
                      "2015-01-01"
                    ),
                    ErrorMessage = "string",
                    LogGroup = "string",
                    LogStream = "string"
                  )
                )
              )
            )
          ),
          Edges = list(
            list(
              SourceId = "string",
              DestinationId = "string"
            )
          )
        ),
        StartingEventBatchCondition = list(
          BatchSize = 123,
          BatchWindow = 123
        )
      )
    )

### Request syntax

    svc$get_workflow_run(
      Name = "string",
      RunId = "string",
      IncludeGraph = TRUE|FALSE
    )
