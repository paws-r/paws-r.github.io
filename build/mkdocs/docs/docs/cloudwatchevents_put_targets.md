<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_put_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule

### Description

Adds the specified targets to the specified rule, or updates the targets
if they are already associated with the rule.

Targets are the resources that are invoked when a rule is triggered.

You can configure the following as targets for Events:

-   [API
    destination](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-api-destinations.html)

-   Amazon API Gateway REST API endpoints

-   API Gateway

-   Batch job queue

-   CloudWatch Logs group

-   CodeBuild project

-   CodePipeline

-   Amazon EC2 `CreateSnapshot` API call

-   Amazon EC2 `RebootInstances` API call

-   Amazon EC2 `StopInstances` API call

-   Amazon EC2 `TerminateInstances` API call

-   Amazon ECS tasks

-   Event bus in a different Amazon Web Services account or Region.

    You can use an event bus in the US East (N. Virginia) us-east-1, US
    West (Oregon) us-west-2, or Europe (Ireland) eu-west-1 Regions as a
    target for a rule.

-   Firehose delivery stream (Kinesis Data Firehose)

-   Inspector assessment template (Amazon Inspector)

-   Kinesis stream (Kinesis Data Stream)

-   Lambda function

-   Redshift clusters (Data API statement execution)

-   Amazon SNS topic

-   Amazon SQS queues (includes FIFO queues

-   SSM Automation

-   SSM OpsItem

-   SSM Run Command

-   Step Functions state machines

Creating rules with built-in targets is supported only in the Management
Console. The built-in targets are `⁠EC2 CreateSnapshot API call⁠`,
`⁠EC2 RebootInstances API call⁠`, `⁠EC2 StopInstances API call⁠`, and
`⁠EC2 TerminateInstances API call⁠`.

For some target types, `put_targets` provides target-specific
parameters. If the target is a Kinesis data stream, you can optionally
specify which shard the event goes to by using the `KinesisParameters`
argument. To invoke a command on multiple EC2 instances with one rule,
you can use the `RunCommandParameters` field.

To be able to make API calls against the resources that you own, Amazon
EventBridge needs the appropriate permissions. For Lambda and Amazon SNS
resources, EventBridge relies on resource-based policies. For EC2
instances, Kinesis Data Streams, Step Functions state machines and API
Gateway REST APIs, EventBridge relies on IAM roles that you specify in
the `RoleARN` argument in `put_targets`. For more information, see
[Authentication and Access
Control](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-iam.html)
in the *Amazon EventBridge User Guide*.

If another Amazon Web Services account is in the same region and has
granted you permission (using `put_permission`), you can send events to
that account. Set that account's event bus as a target of the rules in
your account. To send the matched events to the other account, specify
that account's event bus as the `Arn` value when you run `put_targets`.
If your account sends events to another account, your account is charged
for each sent event. Each event sent to another account is charged as a
custom event. The account receiving the event is not charged. For more
information, see [Amazon EventBridge
Pricing](https://aws.amazon.com/eventbridge/pricing/).

`Input`, `InputPath`, and `InputTransformer` are not available with
`PutTarget` if the target is an event bus of a different Amazon Web
Services account.

If you are setting the event bus of another account as the target, and
that account granted permission to your account through an organization
instead of directly by the account ID, then you must specify a `RoleArn`
with proper permissions in the `Target` structure. For more information,
see [Sending and Receiving Events Between Amazon Web Services
Accounts](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-cross-account.html)
in the *Amazon EventBridge User Guide*.

For more information about enabling cross-account events, see
`put_permission`.

**Input**, **InputPath**, and **InputTransformer** are mutually
exclusive and optional parameters of a target. When a rule is triggered
due to a matched event:

-   If none of the following arguments are specified for a target, then
    the entire event is passed to the target in JSON format (unless the
    target is Amazon EC2 Run Command or Amazon ECS task, in which case
    nothing from the event is passed to the target).

-   If **Input** is specified in the form of valid JSON, then the
    matched event is overridden with this constant.

-   If **InputPath** is specified in the form of JSONPath (for example,
    `⁠$.detail⁠`), then only the part of the event specified in the path
    is passed to the target (for example, only the detail part of the
    event is passed).

-   If **InputTransformer** is specified, then one or more specified
    JSONPaths are extracted from the event and used as values in a
    template that you specify as the input to the target.

When you specify `InputPath` or `InputTransformer`, you must use JSON
dot notation, not bracket notation.

When you add targets to a rule and the associated rule triggers soon
after, new or updated targets might not be immediately invoked. Allow a
short period of time for changes to take effect.

This action can partially fail if too many requests are made at the same
time. If that happens, `FailedEntryCount` is non-zero in the response
and each entry in `FailedEntries` provides the ID of the failed target
and the error code.

### Usage

    cloudwatchevents_put_targets(Rule, EventBusName, Targets)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudwatchevents_put_targets_:_Rule">Rule</code></td>
<td><p>[required] The name of the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_put_targets_:_EventBusName">EventBusName</code></td>
<td><p>The name or ARN of the event bus associated with the rule. If you
omit this, the default event bus is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_put_targets_:_Targets">Targets</code></td>
<td><p>[required] The targets to update or add to the rule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedEntryCount = 123,
      FailedEntries = list(
        list(
          TargetId = "string",
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$put_targets(
      Rule = "string",
      EventBusName = "string",
      Targets = list(
        list(
          Id = "string",
          Arn = "string",
          RoleArn = "string",
          Input = "string",
          InputPath = "string",
          InputTransformer = list(
            InputPathsMap = list(
              "string"
            ),
            InputTemplate = "string"
          ),
          KinesisParameters = list(
            PartitionKeyPath = "string"
          ),
          RunCommandParameters = list(
            RunCommandTargets = list(
              list(
                Key = "string",
                Values = list(
                  "string"
                )
              )
            )
          ),
          EcsParameters = list(
            TaskDefinitionArn = "string",
            TaskCount = 123,
            LaunchType = "EC2"|"FARGATE"|"EXTERNAL",
            NetworkConfiguration = list(
              awsvpcConfiguration = list(
                Subnets = list(
                  "string"
                ),
                SecurityGroups = list(
                  "string"
                ),
                AssignPublicIp = "ENABLED"|"DISABLED"
              )
            ),
            PlatformVersion = "string",
            Group = "string",
            CapacityProviderStrategy = list(
              list(
                capacityProvider = "string",
                weight = 123,
                base = 123
              )
            ),
            EnableECSManagedTags = TRUE|FALSE,
            EnableExecuteCommand = TRUE|FALSE,
            PlacementConstraints = list(
              list(
                type = "distinctInstance"|"memberOf",
                expression = "string"
              )
            ),
            PlacementStrategy = list(
              list(
                type = "random"|"spread"|"binpack",
                field = "string"
              )
            ),
            PropagateTags = "TASK_DEFINITION",
            ReferenceId = "string",
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            )
          ),
          BatchParameters = list(
            JobDefinition = "string",
            JobName = "string",
            ArrayProperties = list(
              Size = 123
            ),
            RetryStrategy = list(
              Attempts = 123
            )
          ),
          SqsParameters = list(
            MessageGroupId = "string"
          ),
          HttpParameters = list(
            PathParameterValues = list(
              "string"
            ),
            HeaderParameters = list(
              "string"
            ),
            QueryStringParameters = list(
              "string"
            )
          ),
          RedshiftDataParameters = list(
            SecretManagerArn = "string",
            Database = "string",
            DbUser = "string",
            Sql = "string",
            StatementName = "string",
            WithEvent = TRUE|FALSE
          ),
          SageMakerPipelineParameters = list(
            PipelineParameterList = list(
              list(
                Name = "string",
                Value = "string"
              )
            )
          ),
          DeadLetterConfig = list(
            Arn = "string"
          ),
          RetryPolicy = list(
            MaximumRetryAttempts = 123,
            MaximumEventAgeInSeconds = 123
          )
        )
      )
    )
