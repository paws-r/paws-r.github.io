<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_add_job_flow_steps</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AddJobFlowSteps adds new steps to a running cluster

### Description

AddJobFlowSteps adds new steps to a running cluster. A maximum of 256
steps are allowed in each job flow.

If your cluster is long-running (such as a Hive data warehouse) or
complex, you may require more than 256 steps to process your data. You
can bypass the 256-step limitation in various ways, including using SSH
to connect to the master node and submitting queries directly to the
software running on the master node, such as Hive and Hadoop.

A step specifies the location of a JAR file stored either on the master
node of the cluster or in Amazon S3. Each step is performed by the main
function of the main class of the JAR file. The main class can be
specified either in the manifest of the JAR or by using the MainFunction
parameter of the step.

Amazon EMR executes each step in the order listed. For a step to be
considered complete, the main function must exit with a zero exit code
and all Hadoop jobs started while the step was running must have
completed and run successfully.

You can only add steps to a cluster that is in one of the following
states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.

The string values passed into `HadoopJarStep` object cannot exceed a
total of 10240 characters.

### Usage

    emr_add_job_flow_steps(JobFlowId, Steps, ExecutionRoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_add_job_flow_steps_:_JobFlowId">JobFlowId</code></td>
<td><p>[required] A string that uniquely identifies the job flow. This
identifier is returned by <code>run_job_flow</code> and can also be
obtained from <code>list_clusters</code>.</p></td>
</tr>
<tr class="even">
<td><code id="emr_add_job_flow_steps_:_Steps">Steps</code></td>
<td><p>[required] A list of StepConfig to be executed by the job
flow.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_add_job_flow_steps_:_ExecutionRoleArn">ExecutionRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the runtime role for a step on
the cluster. The runtime role can be a cross-account IAM role. The
runtime role ARN is a combination of account ID, role name, and role
type using the following format:
<code>arn:partition:service:region:account:resource</code>.</p>
<p>For example, <code
style="white-space: pre;">⁠arn:aws:IAM::1234567890:role/ReadOnly⁠</code>
is a correctly formatted runtime role ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StepIds = list(
        "string"
      )
    )

### Request syntax

    svc$add_job_flow_steps(
      JobFlowId = "string",
      Steps = list(
        list(
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
        )
      ),
      ExecutionRoleArn = "string"
    )
