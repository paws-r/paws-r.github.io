<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_describe_job_flows</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is no longer supported and will eventually be removed

### Description

This API is no longer supported and will eventually be removed. We
recommend you use `list_clusters`, `describe_cluster`, `list_steps`,
`list_instance_groups` and `list_bootstrap_actions` instead.

DescribeJobFlows returns a list of job flows that match all of the
supplied parameters. The parameters can include a list of job flow IDs,
job flow states, and restrictions on job flow creation date and time.

Regardless of supplied parameters, only job flows created within the
last two months are returned.

If no parameters are supplied, then job flows matching either of the
following criteria are returned:

-   Job flows created and completed in the last two weeks

-   Job flows created within the last two months that are in one of the
    following states: `RUNNING`, `WAITING`, `SHUTTING_DOWN`, `STARTING`

Amazon EMR can return a maximum of 512 job flow descriptions.

### Usage

    emr_describe_job_flows(CreatedAfter, CreatedBefore, JobFlowIds,
      JobFlowStates)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_describe_job_flows_:_CreatedAfter">CreatedAfter</code></td>
<td><p>Return only job flows created after this date and time.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_describe_job_flows_:_CreatedBefore">CreatedBefore</code></td>
<td><p>Return only job flows created before this date and time.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_describe_job_flows_:_JobFlowIds">JobFlowIds</code></td>
<td><p>Return only job flows whose job flow ID is contained in this
list.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_describe_job_flows_:_JobFlowStates">JobFlowStates</code></td>
<td><p>Return only job flows whose state is contained in this
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobFlows = list(
        list(
          JobFlowId = "string",
          Name = "string",
          LogUri = "string",
          LogEncryptionKmsKeyId = "string",
          AmiVersion = "string",
          ExecutionStatusDetail = list(
            State = "STARTING"|"BOOTSTRAPPING"|"RUNNING"|"WAITING"|"SHUTTING_DOWN"|"TERMINATED"|"COMPLETED"|"FAILED",
            CreationDateTime = as.POSIXct(
              "2015-01-01"
            ),
            StartDateTime = as.POSIXct(
              "2015-01-01"
            ),
            ReadyDateTime = as.POSIXct(
              "2015-01-01"
            ),
            EndDateTime = as.POSIXct(
              "2015-01-01"
            ),
            LastStateChangeReason = "string"
          ),
          Instances = list(
            MasterInstanceType = "string",
            MasterPublicDnsName = "string",
            MasterInstanceId = "string",
            SlaveInstanceType = "string",
            InstanceCount = 123,
            InstanceGroups = list(
              list(
                InstanceGroupId = "string",
                Name = "string",
                Market = "ON_DEMAND"|"SPOT",
                InstanceRole = "MASTER"|"CORE"|"TASK",
                BidPrice = "string",
                InstanceType = "string",
                InstanceRequestCount = 123,
                InstanceRunningCount = 123,
                State = "PROVISIONING"|"BOOTSTRAPPING"|"RUNNING"|"RECONFIGURING"|"RESIZING"|"SUSPENDED"|"TERMINATING"|"TERMINATED"|"ARRESTED"|"SHUTTING_DOWN"|"ENDED",
                LastStateChangeReason = "string",
                CreationDateTime = as.POSIXct(
                  "2015-01-01"
                ),
                StartDateTime = as.POSIXct(
                  "2015-01-01"
                ),
                ReadyDateTime = as.POSIXct(
                  "2015-01-01"
                ),
                EndDateTime = as.POSIXct(
                  "2015-01-01"
                ),
                CustomAmiId = "string"
              )
            ),
            NormalizedInstanceHours = 123,
            Ec2KeyName = "string",
            Ec2SubnetId = "string",
            Placement = list(
              AvailabilityZone = "string",
              AvailabilityZones = list(
                "string"
              )
            ),
            KeepJobFlowAliveWhenNoSteps = TRUE|FALSE,
            TerminationProtected = TRUE|FALSE,
            HadoopVersion = "string"
          ),
          Steps = list(
            list(
              StepConfig = list(
                Name = "string",
                ActionOnFailure = "TERMINATE_JOB_FLOW"|"TERMINATE_CLUSTER"|"CANCEL_AND_WAIT"|"CONTINUE",
                HadoopJarStep = list(
                  Properties = list(
                    list(
                      Key = "string",
                      Value = "string"
                    )
                  ),
                  Jar = "string",
                  MainClass = "string",
                  Args = list(
                    "string"
                  )
                )
              ),
              ExecutionStatusDetail = list(
                State = "PENDING"|"RUNNING"|"CONTINUE"|"COMPLETED"|"CANCELLED"|"FAILED"|"INTERRUPTED",
                CreationDateTime = as.POSIXct(
                  "2015-01-01"
                ),
                StartDateTime = as.POSIXct(
                  "2015-01-01"
                ),
                EndDateTime = as.POSIXct(
                  "2015-01-01"
                ),
                LastStateChangeReason = "string"
              )
            )
          ),
          BootstrapActions = list(
            list(
              BootstrapActionConfig = list(
                Name = "string",
                ScriptBootstrapAction = list(
                  Path = "string",
                  Args = list(
                    "string"
                  )
                )
              )
            )
          ),
          SupportedProducts = list(
            "string"
          ),
          VisibleToAllUsers = TRUE|FALSE,
          JobFlowRole = "string",
          ServiceRole = "string",
          AutoScalingRole = "string",
          ScaleDownBehavior = "TERMINATE_AT_INSTANCE_HOUR"|"TERMINATE_AT_TASK_COMPLETION"
        )
      )
    )

### Request syntax

    svc$describe_job_flows(
      CreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      JobFlowIds = list(
        "string"
      ),
      JobFlowStates = list(
        "STARTING"|"BOOTSTRAPPING"|"RUNNING"|"WAITING"|"SHUTTING_DOWN"|"TERMINATED"|"COMPLETED"|"FAILED"
      )
    )
