<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_create_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deploys an application revision through the specified deployment group

### Description

Deploys an application revision through the specified deployment group.

### Usage

    codedeploy_create_deployment(applicationName, deploymentGroupName,
      revision, deploymentConfigName, description,
      ignoreApplicationStopFailures, targetInstances,
      autoRollbackConfiguration, updateOutdatedInstancesOnly,
      fileExistsBehavior, overrideAlarmConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_:_applicationName">applicationName</code></td>
<td><p>[required] The name of an CodeDeploy application associated with
the IAM user or Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_:_deploymentGroupName">deploymentGroupName</code></td>
<td><p>The name of the deployment group.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_:_revision">revision</code></td>
<td><p>The type and location of the revision to deploy.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_:_deploymentConfigName">deploymentConfigName</code></td>
<td><p>The name of a deployment configuration associated with the IAM
user or Amazon Web Services account.</p>
<p>If not specified, the value configured in the deployment group is
used as the default. If the deployment group does not have a deployment
configuration associated with it,
<code>CodeDeployDefault</code>.<code>OneAtATime</code> is used by
default.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_:_description">description</code></td>
<td><p>A comment about the deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_:_ignoreApplicationStopFailures">ignoreApplicationStopFailures</code></td>
<td><p>If true, then if an <code>ApplicationStop</code>,
<code>BeforeBlockTraffic</code>, or <code>AfterBlockTraffic</code>
deployment lifecycle event to an instance fails, then the deployment
continues to the next deployment lifecycle event. For example, if
<code>ApplicationStop</code> fails, the deployment continues with
<code>DownloadBundle</code>. If <code>BeforeBlockTraffic</code> fails,
the deployment continues with <code>BlockTraffic</code>. If
<code>AfterBlockTraffic</code> fails, the deployment continues with
<code>ApplicationStop</code>.</p>
<p>If false or not specified, then if a lifecycle event fails during a
deployment to an instance, that deployment fails. If deployment to that
instance is part of an overall deployment and the number of healthy
hosts is not less than the minimum number of healthy hosts, then a
deployment to the next instance is attempted.</p>
<p>During a deployment, the CodeDeploy agent runs the scripts specified
for <code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
<code>AfterBlockTraffic</code> in the AppSpec file from the previous
successful deployment. (All other scripts are run from the AppSpec file
in the current deployment.) If one of these scripts contains an error
and does not run successfully, the deployment can fail.</p>
<p>If the cause of the failure is a script from the last successful
deployment that will never run successfully, create a new deployment and
use <code>ignoreApplicationStopFailures</code> to specify that the
<code>ApplicationStop</code>, <code>BeforeBlockTraffic</code>, and
<code>AfterBlockTraffic</code> failures should be ignored.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_:_targetInstances">targetInstances</code></td>
<td><p>Information about the instances that belong to the replacement
environment in a blue/green deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_:_autoRollbackConfiguration">autoRollbackConfiguration</code></td>
<td><p>Configuration information for an automatic rollback that is added
when a deployment is created.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_:_updateOutdatedInstancesOnly">updateOutdatedInstancesOnly</code></td>
<td><p>Indicates whether to deploy to all instances or only to instances
that are not running the latest application revision.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_:_fileExistsBehavior">fileExistsBehavior</code></td>
<td><p>Information about how CodeDeploy handles files that already exist
in a deployment target location but weren't part of the previous
successful deployment.</p>
<p>The <code>fileExistsBehavior</code> parameter takes any of the
following values:</p>
<ul>
<li><p>DISALLOW: The deployment fails. This is also the default behavior
if no option is specified.</p></li>
<li><p>OVERWRITE: The version of the file from the application revision
currently being deployed replaces the version already on the
instance.</p></li>
<li><p>RETAIN: The version of the file already on the instance is kept
and used as part of the new deployment.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_:_overrideAlarmConfiguration">overrideAlarmConfiguration</code></td>
<td><p>Allows you to specify information about alarms associated with a
deployment. The alarm configuration that you specify here will override
the alarm configuration at the deployment group level. Consider
overriding the alarm configuration if you have set up alarms at the
deployment group level that are causing deployment failures. In this
case, you would call <code>create_deployment</code> to create a new
deployment that uses a previous application revision that is known to
work, and set its alarm configuration to turn off alarm polling. Turning
off alarm polling ensures that the new deployment proceeds without being
blocked by the alarm that was generated by the previous, failed,
deployment.</p>
<p>If you specify an <code>overrideAlarmConfiguration</code>, you need
the <code>update_deployment_group</code> IAM permission when calling
<code>create_deployment</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deploymentId = "string"
    )

### Request syntax

    svc$create_deployment(
      applicationName = "string",
      deploymentGroupName = "string",
      revision = list(
        revisionType = "S3"|"GitHub"|"String"|"AppSpecContent",
        s3Location = list(
          bucket = "string",
          key = "string",
          bundleType = "tar"|"tgz"|"zip"|"YAML"|"JSON",
          version = "string",
          eTag = "string"
        ),
        gitHubLocation = list(
          repository = "string",
          commitId = "string"
        ),
        string = list(
          content = "string",
          sha256 = "string"
        ),
        appSpecContent = list(
          content = "string",
          sha256 = "string"
        )
      ),
      deploymentConfigName = "string",
      description = "string",
      ignoreApplicationStopFailures = TRUE|FALSE,
      targetInstances = list(
        tagFilters = list(
          list(
            Key = "string",
            Value = "string",
            Type = "KEY_ONLY"|"VALUE_ONLY"|"KEY_AND_VALUE"
          )
        ),
        autoScalingGroups = list(
          "string"
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
        )
      ),
      autoRollbackConfiguration = list(
        enabled = TRUE|FALSE,
        events = list(
          "DEPLOYMENT_FAILURE"|"DEPLOYMENT_STOP_ON_ALARM"|"DEPLOYMENT_STOP_ON_REQUEST"
        )
      ),
      updateOutdatedInstancesOnly = TRUE|FALSE,
      fileExistsBehavior = "DISALLOW"|"OVERWRITE"|"RETAIN",
      overrideAlarmConfiguration = list(
        enabled = TRUE|FALSE,
        ignorePollAlarmFailure = TRUE|FALSE,
        alarms = list(
          list(
            name = "string"
          )
        )
      )
    )
