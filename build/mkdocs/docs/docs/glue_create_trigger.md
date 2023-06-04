<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_trigger</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new trigger

### Description

Creates a new trigger.

### Usage

    glue_create_trigger(Name, WorkflowName, Type, Schedule, Predicate,
      Actions, Description, StartOnCreation, Tags, EventBatchingCondition)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_trigger_:_Name">Name</code></td>
<td><p>[required] The name of the trigger.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_trigger_:_WorkflowName">WorkflowName</code></td>
<td><p>The name of the workflow associated with the trigger.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_trigger_:_Type">Type</code></td>
<td><p>[required] The type of the new trigger.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_trigger_:_Schedule">Schedule</code></td>
<td><p>A <code>cron</code> expression used to specify the schedule (see
<a
href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based
Schedules for Jobs and Crawlers</a>. For example, to run something every
day at 12:15 UTC, you would specify: <code
style="white-space: pre;">⁠cron(15 12 * * ? *)⁠</code>.</p>
<p>This field is required when the trigger type is SCHEDULED.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_trigger_:_Predicate">Predicate</code></td>
<td><p>A predicate to specify when the new trigger should fire.</p>
<p>This field is required when the trigger type is
<code>CONDITIONAL</code>.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_trigger_:_Actions">Actions</code></td>
<td><p>[required] The actions initiated by this trigger when it
fires.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_trigger_:_Description">Description</code></td>
<td><p>A description of the new trigger.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_trigger_:_StartOnCreation">StartOnCreation</code></td>
<td><p>Set to <code>true</code> to start <code>SCHEDULED</code> and
<code>CONDITIONAL</code> triggers when created. True is not supported
for <code>ON_DEMAND</code> triggers.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_trigger_:_Tags">Tags</code></td>
<td><p>The tags to use with this trigger. You may use tags to limit
access to the trigger. For more information about tags in Glue, see <a
href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon
Web Services Tags in Glue</a> in the developer guide.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_trigger_:_EventBatchingCondition">EventBatchingCondition</code></td>
<td><p>Batch condition that must be met (specified number of events
received or batch time window expired) before EventBridge event trigger
fires.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_trigger(
      Name = "string",
      WorkflowName = "string",
      Type = "SCHEDULED"|"CONDITIONAL"|"ON_DEMAND"|"EVENT",
      Schedule = "string",
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
      Description = "string",
      StartOnCreation = TRUE|FALSE,
      Tags = list(
        "string"
      ),
      EventBatchingCondition = list(
        BatchSize = 123,
        BatchWindow = 123
      )
    )
