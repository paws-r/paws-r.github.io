<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_create_deployment_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a deployment group to which application revisions are deployed

### Description

Creates a deployment group to which application revisions are deployed.

### Usage

    codedeploy_create_deployment_group(applicationName, deploymentGroupName,
      deploymentConfigName, ec2TagFilters, onPremisesInstanceTagFilters,
      autoScalingGroups, serviceRoleArn, triggerConfigurations,
      alarmConfiguration, autoRollbackConfiguration,
      outdatedInstancesStrategy, deploymentStyle,
      blueGreenDeploymentConfiguration, loadBalancerInfo, ec2TagSet,
      ecsServices, onPremisesTagSet, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_group_:_applicationName">applicationName</code></td>
<td><p>[required] The name of an CodeDeploy application associated with
the IAM user or Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_group_:_deploymentGroupName">deploymentGroupName</code></td>
<td><p>[required] The name of a new deployment group for the specified
application.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_group_:_deploymentConfigName">deploymentConfigName</code></td>
<td><p>If specified, the deployment configuration name can be either one
of the predefined configurations provided with CodeDeploy or a custom
deployment configuration that you create by calling the create
deployment configuration operation.</p>
<p><code>CodeDeployDefault.OneAtATime</code> is the default deployment
configuration. It is used if a configuration isn't specified for the
deployment or deployment group.</p>
<p>For more information about the predefined deployment configurations
in CodeDeploy, see <a
href="https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html">Working
with Deployment Configurations in CodeDeploy</a> in the <em>CodeDeploy
User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_group_:_ec2TagFilters">ec2TagFilters</code></td>
<td><p>The Amazon EC2 tags on which to filter. The deployment group
includes Amazon EC2 instances with any of the specified tags. Cannot be
used in the same call as ec2TagSet.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_group_:_onPremisesInstanceTagFilters">onPremisesInstanceTagFilters</code></td>
<td><p>The on-premises instance tags on which to filter. The deployment
group includes on-premises instances with any of the specified tags.
Cannot be used in the same call as
<code>OnPremisesTagSet</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_group_:_autoScalingGroups">autoScalingGroups</code></td>
<td><p>A list of associated Amazon EC2 Auto Scaling groups.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_group_:_serviceRoleArn">serviceRoleArn</code></td>
<td><p>[required] A service role Amazon Resource Name (ARN) that allows
CodeDeploy to act on the user's behalf when interacting with Amazon Web
Services services.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_group_:_triggerConfigurations">triggerConfigurations</code></td>
<td><p>Information about triggers to create when the deployment group is
created. For examples, see <a
href="https://docs.aws.amazon.com/codedeploy/latest/userguide/monitoring-sns-event-notifications-create-trigger.html">Create
a Trigger for an CodeDeploy Event</a> in the <em>CodeDeploy User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_group_:_alarmConfiguration">alarmConfiguration</code></td>
<td><p>Information to add about Amazon CloudWatch alarms when the
deployment group is created.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_group_:_autoRollbackConfiguration">autoRollbackConfiguration</code></td>
<td><p>Configuration information for an automatic rollback that is added
when a deployment group is created.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_group_:_outdatedInstancesStrategy">outdatedInstancesStrategy</code></td>
<td><p>Indicates what happens when new Amazon EC2 instances are launched
mid-deployment and do not receive the deployed application revision.</p>
<p>If this option is set to <code>UPDATE</code> or is unspecified,
CodeDeploy initiates one or more 'auto-update outdated instances'
deployments to apply the deployed application revision to the new Amazon
EC2 instances.</p>
<p>If this option is set to <code>IGNORE</code>, CodeDeploy does not
initiate a deployment to update the new Amazon EC2 instances. This may
result in instances having different revisions.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_group_:_deploymentStyle">deploymentStyle</code></td>
<td><p>Information about the type of deployment, in-place or blue/green,
that you want to run and whether to route deployment traffic behind a
load balancer.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_group_:_blueGreenDeploymentConfiguration">blueGreenDeploymentConfiguration</code></td>
<td><p>Information about blue/green deployment options for a deployment
group.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_group_:_loadBalancerInfo">loadBalancerInfo</code></td>
<td><p>Information about the load balancer used in a
deployment.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_group_:_ec2TagSet">ec2TagSet</code></td>
<td><p>Information about groups of tags applied to Amazon EC2 instances.
The deployment group includes only Amazon EC2 instances identified by
all the tag groups. Cannot be used in the same call as
<code>ec2TagFilters</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_group_:_ecsServices">ecsServices</code></td>
<td><p>The target Amazon ECS services in the deployment group. This
applies only to deployment groups that use the Amazon ECS compute
platform. A target Amazon ECS service is specified as an Amazon ECS
cluster and service name pair using the format <code
style="white-space: pre;">⁠&lt;clustername&gt;:&lt;servicename&gt;⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_group_:_onPremisesTagSet">onPremisesTagSet</code></td>
<td><p>Information about groups of tags applied to on-premises
instances. The deployment group includes only on-premises instances
identified by all of the tag groups. Cannot be used in the same call as
<code>onPremisesInstanceTagFilters</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_group_:_tags">tags</code></td>
<td><p>The metadata that you apply to CodeDeploy deployment groups to
help you organize and categorize them. Each tag consists of a key and an
optional value, both of which you define.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deploymentGroupId = "string"
    )

### Request syntax

    svc$create_deployment_group(
      applicationName = "string",
      deploymentGroupName = "string",
      deploymentConfigName = "string",
      ec2TagFilters = list(
        list(
          Key = "string",
          Value = "string",
          Type = "KEY_ONLY"|"VALUE_ONLY"|"KEY_AND_VALUE"
        )
      ),
      onPremisesInstanceTagFilters = list(
        list(
          Key = "string",
          Value = "string",
          Type = "KEY_ONLY"|"VALUE_ONLY"|"KEY_AND_VALUE"
        )
      ),
      autoScalingGroups = list(
        "string"
      ),
      serviceRoleArn = "string",
      triggerConfigurations = list(
        list(
          triggerName = "string",
          triggerTargetArn = "string",
          triggerEvents = list(
            "DeploymentStart"|"DeploymentSuccess"|"DeploymentFailure"|"DeploymentStop"|"DeploymentRollback"|"DeploymentReady"|"InstanceStart"|"InstanceSuccess"|"InstanceFailure"|"InstanceReady"
          )
        )
      ),
      alarmConfiguration = list(
        enabled = TRUE|FALSE,
        ignorePollAlarmFailure = TRUE|FALSE,
        alarms = list(
          list(
            name = "string"
          )
        )
      ),
      autoRollbackConfiguration = list(
        enabled = TRUE|FALSE,
        events = list(
          "DEPLOYMENT_FAILURE"|"DEPLOYMENT_STOP_ON_ALARM"|"DEPLOYMENT_STOP_ON_REQUEST"
        )
      ),
      outdatedInstancesStrategy = "UPDATE"|"IGNORE",
      deploymentStyle = list(
        deploymentType = "IN_PLACE"|"BLUE_GREEN",
        deploymentOption = "WITH_TRAFFIC_CONTROL"|"WITHOUT_TRAFFIC_CONTROL"
      ),
      blueGreenDeploymentConfiguration = list(
        terminateBlueInstancesOnDeploymentSuccess = list(
          action = "TERMINATE"|"KEEP_ALIVE",
          terminationWaitTimeInMinutes = 123
        ),
        deploymentReadyOption = list(
          actionOnTimeout = "CONTINUE_DEPLOYMENT"|"STOP_DEPLOYMENT",
          waitTimeInMinutes = 123
        ),
        greenFleetProvisioningOption = list(
          action = "DISCOVER_EXISTING"|"COPY_AUTO_SCALING_GROUP"
        )
      ),
      loadBalancerInfo = list(
        elbInfoList = list(
          list(
            name = "string"
          )
        ),
        targetGroupInfoList = list(
          list(
            name = "string"
          )
        ),
        targetGroupPairInfoList = list(
          list(
            targetGroups = list(
              list(
                name = "string"
              )
            ),
            prodTrafficRoute = list(
              listenerArns = list(
                "string"
              )
            ),
            testTrafficRoute = list(
              listenerArns = list(
                "string"
              )
            )
          )
        )
      ),
      ec2TagSet = list(
        ec2TagSetList = list(
          list(
            list(
              Key = "string",
              Value = "string",
              Type = "KEY_ONLY"|"VALUE_ONLY"|"KEY_AND_VALUE"
            )
          )
        )
      ),
      ecsServices = list(
        list(
          serviceName = "string",
          clusterName = "string"
        )
      ),
      onPremisesTagSet = list(
        onPremisesTagSetList = list(
          list(
            list(
              Key = "string",
              Value = "string",
              Type = "KEY_ONLY"|"VALUE_ONLY"|"KEY_AND_VALUE"
            )
          )
        )
      ),
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
