<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_create_cloud_formation_change_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an AWS CloudFormation change set for the given application

### Description

Creates an AWS CloudFormation change set for the given application.

### Usage

    serverlessapplicationrepository_create_cloud_formation_change_set(
      ApplicationId, Capabilities, ChangeSetName, ClientToken, Description,
      NotificationArns, ParameterOverrides, ResourceTypes,
      RollbackConfiguration, SemanticVersion, StackName, Tags, TemplateId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_Capabilities">Capabilities</code></td>
<td><p>A list of values that you must specify before you can deploy
certain applications. Some applications might include resources that can
affect permissions in your AWS account, for example, by creating new AWS
Identity and Access Management (IAM) users. For those applications, you
must explicitly acknowledge their capabilities by specifying this
parameter.</p>
<p>The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,
CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.</p>
<p>The following resources require you to specify CAPABILITY_IAM or
CAPABILITY_NAMED_IAM: <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">AWS::IAM::Group</a>,
<a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>,
<a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html">AWS::IAM::Policy</a>,
and <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">AWS::IAM::Role</a>.
If the application contains IAM resources, you can specify either
CAPABILITY_IAM or CAPABILITY_NAMED_IAM. If the application contains IAM
resources with custom names, you must specify CAPABILITY_NAMED_IAM.</p>
<p>The following resources require you to specify
CAPABILITY_RESOURCE_POLICY: <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html">AWS::Lambda::Permission</a>,
<a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html">AWS::IAM:Policy</a>,
<a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html">AWS::ApplicationAutoScaling::ScalingPolicy</a>,
<a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html">AWS::S3::BucketPolicy</a>,
<a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html">AWS::SQS::QueuePolicy</a>,
and <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html">AWS::SNS:TopicPolicy</a>.</p>
<p>Applications that contain one or more nested applications require you
to specify CAPABILITY_AUTO_EXPAND.</p>
<p>If your application template contains any of the above resources, we
recommend that you review all permissions associated with the
application before deploying. If you don't specify this parameter for an
application that requires capabilities, the call will fail.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_ChangeSetName">ChangeSetName</code></td>
<td><p>This property corresponds to the parameter of the same name for
the <em>AWS CloudFormation <span
href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</span></em>
API.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_ClientToken">ClientToken</code></td>
<td><p>This property corresponds to the parameter of the same name for
the <em>AWS CloudFormation <span
href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</span></em>
API.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_Description">Description</code></td>
<td><p>This property corresponds to the parameter of the same name for
the <em>AWS CloudFormation <span
href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</span></em>
API.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_NotificationArns">NotificationArns</code></td>
<td><p>This property corresponds to the parameter of the same name for
the <em>AWS CloudFormation <span
href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</span></em>
API.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_ParameterOverrides">ParameterOverrides</code></td>
<td><p>A list of parameter values for the parameters of the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_ResourceTypes">ResourceTypes</code></td>
<td><p>This property corresponds to the parameter of the same name for
the <em>AWS CloudFormation <span
href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</span></em>
API.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_RollbackConfiguration">RollbackConfiguration</code></td>
<td><p>This property corresponds to the parameter of the same name for
the <em>AWS CloudFormation <span
href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</span></em>
API.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_SemanticVersion">SemanticVersion</code></td>
<td><p>The semantic version of the application:</p>
<p><a href="https://semver.org/">https://semver.org/</a></p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_StackName">StackName</code></td>
<td><p>[required] This property corresponds to the parameter of the same
name for the <em>AWS CloudFormation <span
href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</span></em>
API.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_Tags">Tags</code></td>
<td><p>This property corresponds to the parameter of the same name for
the <em>AWS CloudFormation <span
href="https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet">CreateChangeSet</span></em>
API.</p></td>
</tr>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_create_cloud_formation_change_set_:_TemplateId">TemplateId</code></td>
<td><p>The UUID returned by CreateCloudFormationTemplate.</p>
<p>Pattern:
[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationId = "string",
      ChangeSetId = "string",
      SemanticVersion = "string",
      StackId = "string"
    )

### Request syntax

    svc$create_cloud_formation_change_set(
      ApplicationId = "string",
      Capabilities = list(
        "string"
      ),
      ChangeSetName = "string",
      ClientToken = "string",
      Description = "string",
      NotificationArns = list(
        "string"
      ),
      ParameterOverrides = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      ResourceTypes = list(
        "string"
      ),
      RollbackConfiguration = list(
        MonitoringTimeInMinutes = 123,
        RollbackTriggers = list(
          list(
            Arn = "string",
            Type = "string"
          )
        )
      ),
      SemanticVersion = "string",
      StackName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      TemplateId = "string"
    )
