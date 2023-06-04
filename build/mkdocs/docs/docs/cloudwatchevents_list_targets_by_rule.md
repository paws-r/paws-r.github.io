<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_list_targets_by_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the targets assigned to the specified rule

### Description

Lists the targets assigned to the specified rule.

### Usage

    cloudwatchevents_list_targets_by_rule(Rule, EventBusName, NextToken,
      Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_list_targets_by_rule_:_Rule">Rule</code></td>
<td><p>[required] The name of the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_list_targets_by_rule_:_EventBusName">EventBusName</code></td>
<td><p>The name or ARN of the event bus associated with the rule. If you
omit this, the default event bus is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_list_targets_by_rule_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_list_targets_by_rule_:_Limit">Limit</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_targets_by_rule(
      Rule = "string",
      EventBusName = "string",
      NextToken = "string",
      Limit = 123
    )
