<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_update_deployment_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes information about a deployment group

### Description

Changes information about a deployment group.

### Usage

    codedeploy_update_deployment_group(applicationName,
      currentDeploymentGroupName, newDeploymentGroupName,
      deploymentConfigName, ec2TagFilters, onPremisesInstanceTagFilters,
      autoScalingGroups, serviceRoleArn, triggerConfigurations,
      alarmConfiguration, autoRollbackConfiguration,
      outdatedInstancesStrategy, deploymentStyle,
      blueGreenDeploymentConfiguration, loadBalancerInfo, ec2TagSet,
      ecsServices, onPremisesTagSet)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_update_deployment_group_:_applicationName">applicationName</code></td>
<td><p>[required] The application name that corresponds to the
deployment group to update.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_update_deployment_group_:_currentDeploymentGroupName">currentDeploymentGroupName</code></td>
<td><p>[required] The current name of the deployment group.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_update_deployment_group_:_newDeploymentGroupName">newDeploymentGroupName</code></td>
<td><p>The new name of the deployment group, if you want to change
it.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_update_deployment_group_:_deploymentConfigName">deploymentConfigName</code></td>
<td><p>The replacement deployment configuration name to use, if you want
to change it.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_update_deployment_group_:_ec2TagFilters">ec2TagFilters</code></td>
<td><p>The replacement set of Amazon EC2 tags on which to filter, if you
want to change them. To keep the existing tags, enter their names. To
remove tags, do not enter any tag names.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_update_deployment_group_:_onPremisesInstanceTagFilters">onPremisesInstanceTagFilters</code></td>
<td><p>The replacement set of on-premises instance tags on which to
filter, if you want to change them. To keep the existing tags, enter
their names. To remove tags, do not enter any tag names.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_update_deployment_group_:_autoScalingGroups">autoScalingGroups</code></td>
<td><p>The replacement list of Auto Scaling groups to be included in the
deployment group, if you want to change them.</p>
<ul>
<li><p>To keep the Auto Scaling groups, enter their names or do not
specify this parameter.</p></li>
<li><p>To remove Auto Scaling groups, specify a non-null empty list of
Auto Scaling group names to detach all CodeDeploy-managed Auto Scaling
lifecycle hooks. For examples, see Amazon EC2 instances in an Amazon EC2
Auto Scaling group fail to launch and receive the error "Heartbeat
Timeout" in the <em>CodeDeploy User Guide</em>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_update_deployment_group_:_serviceRoleArn">serviceRoleArn</code></td>
<td><p>A replacement ARN for the service role, if you want to change
it.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_update_deployment_group_:_triggerConfigurations">triggerConfigurations</code></td>
<td><p>Information about triggers to change when the deployment group is
updated. For examples, see <a
href="https://docs.aws.amazon.com/codedeploy/latest/userguide/monitoring-sns-event-notifications-edit-trigger.html">Edit
a Trigger in a CodeDeploy Deployment Group</a> in the <em>CodeDeploy
User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_update_deployment_group_:_alarmConfiguration">alarmConfiguration</code></td>
<td><p>Information to add or change about Amazon CloudWatch alarms when
the deployment group is updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_update_deployment_group_:_autoRollbackConfiguration">autoRollbackConfiguration</code></td>
<td><p>Information for an automatic rollback configuration that is added
or changed when a deployment group is updated.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_update_deployment_group_:_outdatedInstancesStrategy">outdatedInstancesStrategy</code></td>
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
<tr class="odd">
<td><code
id="codedeploy_update_deployment_group_:_deploymentStyle">deploymentStyle</code></td>
<td><p>Information about the type of deployment, either in-place or
blue/green, you want to run and whether to route deployment traffic
behind a load balancer.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_update_deployment_group_:_blueGreenDeploymentConfiguration">blueGreenDeploymentConfiguration</code></td>
<td><p>Information about blue/green deployment options for a deployment
group.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_update_deployment_group_:_loadBalancerInfo">loadBalancerInfo</code></td>
<td><p>Information about the load balancer used in a
deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_update_deployment_group_:_ec2TagSet">ec2TagSet</code></td>
<td><p>Information about groups of tags applied to on-premises
instances. The deployment group includes only Amazon EC2 instances
identified by all the tag groups.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_update_deployment_group_:_ecsServices">ecsServices</code></td>
<td><p>The target Amazon ECS services in the deployment group. This
applies only to deployment groups that use the Amazon ECS compute
platform. A target Amazon ECS service is specified as an Amazon ECS
cluster and service name pair using the format <code
style="white-space: pre;">⁠&lt;clustername&gt;:&lt;servicename&gt;⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_update_deployment_group_:_onPremisesTagSet">onPremisesTagSet</code></td>
<td><p>Information about an on-premises instance tag set. The deployment
group includes only on-premises instances identified by all the tag
groups.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      hooksNotCleanedUp = list(
        list(
          name = "string",
          hook = "string"
        )
      )
    )

### Request syntax

    svc$update_deployment_group(
      applicationName = "string",
      currentDeploymentGroupName = "string",
      newDeploymentGroupName = "string",
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
      )
    )
