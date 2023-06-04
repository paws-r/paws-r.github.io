<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_workflow</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves resource metadata for a workflow

### Description

Retrieves resource metadata for a workflow.

### Usage

    glue_get_workflow(Name, IncludeGraph)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_workflow_:_Name">Name</code></td>
<td><p>[required] The name of the workflow to retrieve.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_workflow_:_IncludeGraph">IncludeGraph</code></td>
<td><p>Specifies whether to include a graph when returning the workflow
resource metadata.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Workflow = list(
        Name = "string",
        Description = "string",
        DefaultRunProperties = list(
          "string"
        ),
        CreatedOn = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedOn = as.POSIXct(
          "2015-01-01"
        ),
        LastRun = list(
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
        MaxConcurrentRuns = 123,
        BlueprintDetails = list(
          BlueprintName = "string",
          RunId = "string"
        )
      )
    )

### Request syntax

    svc$get_workflow(
      Name = "string",
      IncludeGraph = TRUE|FALSE
    )
