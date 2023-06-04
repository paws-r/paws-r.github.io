<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_get_deployment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a deployment

### Description

Gets information about a deployment.

The `content` property of the `appSpecContent` object in the returned
revision is always null. Use `get_application_revision` and the `sha256`
property of the returned `appSpecContent` object to get the content of
the deployment’s AppSpec file.

### Usage

    codedeploy_get_deployment(deploymentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_get_deployment_:_deploymentId">deploymentId</code></td>
<td><p>[required] The unique ID of a deployment associated with the IAM
user or Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deploymentInfo = list(
        applicationName = "string",
        deploymentGroupName = "string",
        deploymentConfigName = "string",
        deploymentId = "string",
        previousRevision = list(
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
        status = "Created"|"Queued"|"InProgress"|"Baking"|"Succeeded"|"Failed"|"Stopped"|"Ready",
        errorInformation = list(
          code = "AGENT_ISSUE"|"ALARM_ACTIVE"|"APPLICATION_MISSING"|"AUTOSCALING_VALIDATION_ERROR"|"AUTO_SCALING_CONFIGURATION"|"AUTO_SCALING_IAM_ROLE_PERMISSIONS"|"CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND"|"CUSTOMER_APPLICATION_UNHEALTHY"|"DEPLOYMENT_GROUP_MISSING"|"ECS_UPDATE_ERROR"|"ELASTIC_LOAD_BALANCING_INVALID"|"ELB_INVALID_INSTANCE"|"HEALTH_CONSTRAINTS"|"HEALTH_CONSTRAINTS_INVALID"|"HOOK_EXECUTION_FAILURE"|"IAM_ROLE_MISSING"|"IAM_ROLE_PERMISSIONS"|"INTERNAL_ERROR"|"INVALID_ECS_SERVICE"|"INVALID_LAMBDA_CONFIGURATION"|"INVALID_LAMBDA_FUNCTION"|"INVALID_REVISION"|"MANUAL_STOP"|"MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION"|"MISSING_ELB_INFORMATION"|"MISSING_GITHUB_TOKEN"|"NO_EC2_SUBSCRIPTION"|"NO_INSTANCES"|"OVER_MAX_INSTANCES"|"RESOURCE_LIMIT_EXCEEDED"|"REVISION_MISSING"|"THROTTLED"|"TIMEOUT"|"CLOUDFORMATION_STACK_FAILURE",
          message = "string"
        ),
        createTime = as.POSIXct(
          "2015-01-01"
        ),
        startTime = as.POSIXct(
          "2015-01-01"
        ),
        completeTime = as.POSIXct(
          "2015-01-01"
        ),
        deploymentOverview = list(
          Pending = 123,
          InProgress = 123,
          Succeeded = 123,
          Failed = 123,
          Skipped = 123,
          Ready = 123
        ),
        description = "string",
        creator = "user"|"autoscaling"|"codeDeployRollback"|"CodeDeploy"|"CodeDeployAutoUpdate"|"CloudFormation"|"CloudFormationRollback",
        ignoreApplicationStopFailures = TRUE|FALSE,
        autoRollbackConfiguration = list(
          enabled = TRUE|FALSE,
          events = list(
            "DEPLOYMENT_FAILURE"|"DEPLOYMENT_STOP_ON_ALARM"|"DEPLOYMENT_STOP_ON_REQUEST"
          )
        ),
        updateOutdatedInstancesOnly = TRUE|FALSE,
        rollbackInfo = list(
          rollbackDeploymentId = "string",
          rollbackTriggeringDeploymentId = "string",
          rollbackMessage = "string"
        ),
        deploymentStyle = list(
          deploymentType = "IN_PLACE"|"BLUE_GREEN",
          deploymentOption = "WITH_TRAFFIC_CONTROL"|"WITHOUT_TRAFFIC_CONTROL"
        ),
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
        instanceTerminationWaitTimeStarted = TRUE|FALSE,
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
        additionalDeploymentStatusInfo = "string",
        fileExistsBehavior = "DISALLOW"|"OVERWRITE"|"RETAIN",
        deploymentStatusMessages = list(
          "string"
        ),
        computePlatform = "Server"|"Lambda"|"ECS",
        externalId = "string",
        relatedDeployments = list(
          autoUpdateOutdatedInstancesRootDeploymentId = "string",
          autoUpdateOutdatedInstancesDeploymentIds = list(
            "string"
          )
        ),
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
    )

### Request syntax

    svc$get_deployment(
      deploymentId = "string"
    )
