<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_add_instance_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more instance groups to a running cluster

### Description

Adds one or more instance groups to a running cluster.

### Usage

    emr_add_instance_groups(InstanceGroups, JobFlowId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_add_instance_groups_:_InstanceGroups">InstanceGroups</code></td>
<td><p>[required] Instance groups to add.</p></td>
</tr>
<tr class="even">
<td><code id="emr_add_instance_groups_:_JobFlowId">JobFlowId</code></td>
<td><p>[required] Job flow in which to add the instance groups.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobFlowId = "string",
      InstanceGroupIds = list(
        "string"
      ),
      ClusterArn = "string"
    )

### Request syntax

    svc$add_instance_groups(
      InstanceGroups = list(
        list(
          Name = "string",
          Market = "ON_DEMAND"|"SPOT",
          InstanceRole = "MASTER"|"CORE"|"TASK",
          BidPrice = "string",
          InstanceType = "string",
          InstanceCount = 123,
          Configurations = list(
            list(
              Classification = "string",
              Configurations = list(),
              Properties = list(
                "string"
              )
            )
          ),
          EbsConfiguration = list(
            EbsBlockDeviceConfigs = list(
              list(
                VolumeSpecification = list(
                  VolumeType = "string",
                  Iops = 123,
                  SizeInGB = 123,
                  Throughput = 123
                ),
                VolumesPerInstance = 123
              )
            ),
            EbsOptimized = TRUE|FALSE
          ),
          AutoScalingPolicy = list(
            Constraints = list(
              MinCapacity = 123,
              MaxCapacity = 123
            ),
            Rules = list(
              list(
                Name = "string",
                Description = "string",
                Action = list(
                  Market = "ON_DEMAND"|"SPOT",
                  SimpleScalingPolicyConfiguration = list(
                    AdjustmentType = "CHANGE_IN_CAPACITY"|"PERCENT_CHANGE_IN_CAPACITY"|"EXACT_CAPACITY",
                    ScalingAdjustment = 123,
                    CoolDown = 123
                  )
                ),
                Trigger = list(
                  CloudWatchAlarmDefinition = list(
                    ComparisonOperator = "GREATER_THAN_OR_EQUAL"|"GREATER_THAN"|"LESS_THAN"|"LESS_THAN_OR_EQUAL",
                    EvaluationPeriods = 123,
                    MetricName = "string",
                    Namespace = "string",
                    Period = 123,
                    Statistic = "SAMPLE_COUNT"|"AVERAGE"|"SUM"|"MINIMUM"|"MAXIMUM",
                    Threshold = 123.0,
                    Unit = "NONE"|"SECONDS"|"MICRO_SECONDS"|"MILLI_SECONDS"|"BYTES"|"KILO_BYTES"|"MEGA_BYTES"|"GIGA_BYTES"|"TERA_BYTES"|"BITS"|"KILO_BITS"|"MEGA_BITS"|"GIGA_BITS"|"TERA_BITS"|"PERCENT"|"COUNT"|"BYTES_PER_SECOND"|"KILO_BYTES_PER_SECOND"|"MEGA_BYTES_PER_SECOND"|"GIGA_BYTES_PER_SECOND"|"TERA_BYTES_PER_SECOND"|"BITS_PER_SECOND"|"KILO_BITS_PER_SECOND"|"MEGA_BITS_PER_SECOND"|"GIGA_BITS_PER_SECOND"|"TERA_BITS_PER_SECOND"|"COUNT_PER_SECOND",
                    Dimensions = list(
                      list(
                        Key = "string",
                        Value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          CustomAmiId = "string"
        )
      ),
      JobFlowId = "string"
    )
