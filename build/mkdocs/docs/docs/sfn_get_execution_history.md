<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_get_execution_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the history of the specified execution as a list of events

### Description

Returns the history of the specified execution as a list of events. By
default, the results are returned in ascending order of the `timeStamp`
of the events. Use the `reverseOrder` parameter to get the latest events
first.

If `nextToken` is returned, there are more results available. The value
of `nextToken` is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page. Keep all other
arguments unchanged. Each pagination token expires after 24 hours. Using
an expired pagination token will return an *HTTP 400 InvalidToken*
error.

This API action is not supported by `EXPRESS` state machines.

### Usage

    sfn_get_execution_history(executionArn, maxResults, reverseOrder,
      nextToken, includeExecutionData)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_get_execution_history_:_executionArn">executionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
execution.</p></td>
</tr>
<tr class="even">
<td><code
id="sfn_get_execution_history_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results that are returned per call. You can
use <code>nextToken</code> to obtain further pages of results. The
default is 100 and the maximum allowed page size is 1000. A value of 0
uses the default.</p>
<p>This is only an upper limit. The actual number of results returned
per call might be fewer than the specified maximum.</p></td>
</tr>
<tr class="odd">
<td><code
id="sfn_get_execution_history_:_reverseOrder">reverseOrder</code></td>
<td><p>Lists events in descending order of their
<code>timeStamp</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sfn_get_execution_history_:_nextToken">nextToken</code></td>
<td><p>If <code>nextToken</code> is returned, there are more results
available. The value of <code>nextToken</code> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged. Each
pagination token expires after 24 hours. Using an expired pagination
token will return an <em>HTTP 400 InvalidToken</em> error.</p></td>
</tr>
<tr class="odd">
<td><code
id="sfn_get_execution_history_:_includeExecutionData">includeExecutionData</code></td>
<td><p>You can select whether execution data (input or output of a
history event) is returned. The default is <code>true</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      events = list(
        list(
          timestamp = as.POSIXct(
            "2015-01-01"
          ),
          type = "ActivityFailed"|"ActivityScheduled"|"ActivityScheduleFailed"|"ActivityStarted"|"ActivitySucceeded"|"ActivityTimedOut"|"ChoiceStateEntered"|"ChoiceStateExited"|"ExecutionAborted"|"ExecutionFailed"|"ExecutionStarted"|"ExecutionSucceeded"|"ExecutionTimedOut"|"FailStateEntered"|"LambdaFunctionFailed"|"LambdaFunctionScheduled"|"LambdaFunctionScheduleFailed"|"LambdaFunctionStarted"|"LambdaFunctionStartFailed"|"LambdaFunctionSucceeded"|"LambdaFunctionTimedOut"|"MapIterationAborted"|"MapIterationFailed"|"MapIterationStarted"|"MapIterationSucceeded"|"MapStateAborted"|"MapStateEntered"|"MapStateExited"|"MapStateFailed"|"MapStateStarted"|"MapStateSucceeded"|"ParallelStateAborted"|"ParallelStateEntered"|"ParallelStateExited"|"ParallelStateFailed"|"ParallelStateStarted"|"ParallelStateSucceeded"|"PassStateEntered"|"PassStateExited"|"SucceedStateEntered"|"SucceedStateExited"|"TaskFailed"|"TaskScheduled"|"TaskStarted"|"TaskStartFailed"|"TaskStateAborted"|"TaskStateEntered"|"TaskStateExited"|"TaskSubmitFailed"|"TaskSubmitted"|"TaskSucceeded"|"TaskTimedOut"|"WaitStateAborted"|"WaitStateEntered"|"WaitStateExited"|"MapRunAborted"|"MapRunFailed"|"MapRunStarted"|"MapRunSucceeded",
          id = 123,
          previousEventId = 123,
          activityFailedEventDetails = list(
            error = "string",
            cause = "string"
          ),
          activityScheduleFailedEventDetails = list(
            error = "string",
            cause = "string"
          ),
          activityScheduledEventDetails = list(
            resource = "string",
            input = "string",
            inputDetails = list(
              truncated = TRUE|FALSE
            ),
            timeoutInSeconds = 123,
            heartbeatInSeconds = 123
          ),
          activityStartedEventDetails = list(
            workerName = "string"
          ),
          activitySucceededEventDetails = list(
            output = "string",
            outputDetails = list(
              truncated = TRUE|FALSE
            )
          ),
          activityTimedOutEventDetails = list(
            error = "string",
            cause = "string"
          ),
          taskFailedEventDetails = list(
            resourceType = "string",
            resource = "string",
            error = "string",
            cause = "string"
          ),
          taskScheduledEventDetails = list(
            resourceType = "string",
            resource = "string",
            region = "string",
            parameters = "string",
            timeoutInSeconds = 123,
            heartbeatInSeconds = 123,
            taskCredentials = list(
              roleArn = "string"
            )
          ),
          taskStartFailedEventDetails = list(
            resourceType = "string",
            resource = "string",
            error = "string",
            cause = "string"
          ),
          taskStartedEventDetails = list(
            resourceType = "string",
            resource = "string"
          ),
          taskSubmitFailedEventDetails = list(
            resourceType = "string",
            resource = "string",
            error = "string",
            cause = "string"
          ),
          taskSubmittedEventDetails = list(
            resourceType = "string",
            resource = "string",
            output = "string",
            outputDetails = list(
              truncated = TRUE|FALSE
            )
          ),
          taskSucceededEventDetails = list(
            resourceType = "string",
            resource = "string",
            output = "string",
            outputDetails = list(
              truncated = TRUE|FALSE
            )
          ),
          taskTimedOutEventDetails = list(
            resourceType = "string",
            resource = "string",
            error = "string",
            cause = "string"
          ),
          executionFailedEventDetails = list(
            error = "string",
            cause = "string"
          ),
          executionStartedEventDetails = list(
            input = "string",
            inputDetails = list(
              truncated = TRUE|FALSE
            ),
            roleArn = "string"
          ),
          executionSucceededEventDetails = list(
            output = "string",
            outputDetails = list(
              truncated = TRUE|FALSE
            )
          ),
          executionAbortedEventDetails = list(
            error = "string",
            cause = "string"
          ),
          executionTimedOutEventDetails = list(
            error = "string",
            cause = "string"
          ),
          mapStateStartedEventDetails = list(
            length = 123
          ),
          mapIterationStartedEventDetails = list(
            name = "string",
            index = 123
          ),
          mapIterationSucceededEventDetails = list(
            name = "string",
            index = 123
          ),
          mapIterationFailedEventDetails = list(
            name = "string",
            index = 123
          ),
          mapIterationAbortedEventDetails = list(
            name = "string",
            index = 123
          ),
          lambdaFunctionFailedEventDetails = list(
            error = "string",
            cause = "string"
          ),
          lambdaFunctionScheduleFailedEventDetails = list(
            error = "string",
            cause = "string"
          ),
          lambdaFunctionScheduledEventDetails = list(
            resource = "string",
            input = "string",
            inputDetails = list(
              truncated = TRUE|FALSE
            ),
            timeoutInSeconds = 123,
            taskCredentials = list(
              roleArn = "string"
            )
          ),
          lambdaFunctionStartFailedEventDetails = list(
            error = "string",
            cause = "string"
          ),
          lambdaFunctionSucceededEventDetails = list(
            output = "string",
            outputDetails = list(
              truncated = TRUE|FALSE
            )
          ),
          lambdaFunctionTimedOutEventDetails = list(
            error = "string",
            cause = "string"
          ),
          stateEnteredEventDetails = list(
            name = "string",
            input = "string",
            inputDetails = list(
              truncated = TRUE|FALSE
            )
          ),
          stateExitedEventDetails = list(
            name = "string",
            output = "string",
            outputDetails = list(
              truncated = TRUE|FALSE
            )
          ),
          mapRunStartedEventDetails = list(
            mapRunArn = "string"
          ),
          mapRunFailedEventDetails = list(
            error = "string",
            cause = "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_execution_history(
      executionArn = "string",
      maxResults = 123,
      reverseOrder = TRUE|FALSE,
      nextToken = "string",
      includeExecutionData = TRUE|FALSE
    )
