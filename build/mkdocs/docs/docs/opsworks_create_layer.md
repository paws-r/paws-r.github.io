<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_create_layer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a layer

### Description

Creates a layer. For more information, see [How to Create a
Layer](https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html).

You should use **CreateLayer** for noncustom layer types such as PHP App
Server only if the stack does not have an existing layer of that type. A
stack can have at most one instance of each noncustom layer; if you
attempt to create a second instance, **CreateLayer** fails. A stack can
have an arbitrary number of custom layers, so you can call
**CreateLayer** as many times as you like for that layer type.

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_create_layer(StackId, Type, Name, Shortname, Attributes,
      CloudWatchLogsConfiguration, CustomInstanceProfileArn, CustomJson,
      CustomSecurityGroupIds, Packages, VolumeConfigurations,
      EnableAutoHealing, AutoAssignElasticIps, AutoAssignPublicIps,
      CustomRecipes, InstallUpdatesOnBoot, UseEbsOptimizedInstances,
      LifecycleEventConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_create_layer_:_StackId">StackId</code></td>
<td><p>[required] The layer stack ID.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_layer_:_Type">Type</code></td>
<td><p>[required] The layer type. A stack cannot have more than one
built-in layer of the same type. It can have any number of custom
layers. Built-in layers are not available in Chef 12 stacks.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_layer_:_Name">Name</code></td>
<td><p>[required] The layer name, which is used by the console.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_layer_:_Shortname">Shortname</code></td>
<td><p>[required] For custom layers only, use this parameter to specify
the layer's short name, which is used internally by AWS OpsWorks Stacks
and by Chef recipes. The short name is also used as the name for the
directory where your app files are installed. It can have a maximum of
200 characters, which are limited to the alphanumeric characters, '-',
'_', and '.'.</p>
<p>The built-in layers' short names are defined by AWS OpsWorks Stacks.
For more information, see the <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html">Layer
Reference</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_create_layer_:_Attributes">Attributes</code></td>
<td><p>One or more user-defined key-value pairs to be added to the stack
attributes.</p>
<p>To create a cluster layer, set the <code>EcsClusterArn</code>
attribute to the cluster's ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_layer_:_CloudWatchLogsConfiguration">CloudWatchLogsConfiguration</code></td>
<td><p>Specifies CloudWatch Logs configuration options for the layer.
For more information, see CloudWatchLogsLogStream.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_layer_:_CustomInstanceProfileArn">CustomInstanceProfileArn</code></td>
<td><p>The ARN of an IAM profile to be used for the layer's EC2
instances. For more information about IAM ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">Using
Identifiers</a>.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_layer_:_CustomJson">CustomJson</code></td>
<td><p>A JSON-formatted string containing custom stack configuration and
deployment attributes to be installed on the layer's instances. For more
information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html">Using
Custom JSON</a>. This feature is supported as of version 1.7.42 of the
AWS CLI.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_layer_:_CustomSecurityGroupIds">CustomSecurityGroupIds</code></td>
<td><p>An array containing the layer custom security group IDs.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_create_layer_:_Packages">Packages</code></td>
<td><p>An array of <code>Package</code> objects that describes the layer
packages.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_layer_:_VolumeConfigurations">VolumeConfigurations</code></td>
<td><p>A <code>VolumeConfigurations</code> object that describes the
layer's Amazon EBS volumes.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_layer_:_EnableAutoHealing">EnableAutoHealing</code></td>
<td><p>Whether to disable auto healing for the layer.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_layer_:_AutoAssignElasticIps">AutoAssignElasticIps</code></td>
<td><p>Whether to automatically assign an <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic
IP address</a> to the layer's instances. For more information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How
to Edit a Layer</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_layer_:_AutoAssignPublicIps">AutoAssignPublicIps</code></td>
<td><p>For stacks that are running in a VPC, whether to automatically
assign a public IP address to the layer's instances. For more
information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html">How
to Edit a Layer</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_layer_:_CustomRecipes">CustomRecipes</code></td>
<td><p>A <code>LayerCustomRecipes</code> object that specifies the layer
custom recipes.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_layer_:_InstallUpdatesOnBoot">InstallUpdatesOnBoot</code></td>
<td><p>Whether to install operating system and package updates when the
instance boots. The default value is <code>true</code>. To control when
updates are installed, set this value to <code>false</code>. You must
then update your instances manually by using
<code>create_deployment</code> to run the
<code>update_dependencies</code> stack command or by manually running
<code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the
instances.</p>
<p>To ensure that your instances have the latest security updates, we
strongly recommend using the default value of
<code>true</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_create_layer_:_UseEbsOptimizedInstances">UseEbsOptimizedInstances</code></td>
<td><p>Whether to use Amazon EBS-optimized instances.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_create_layer_:_LifecycleEventConfiguration">LifecycleEventConfiguration</code></td>
<td><p>A <code>LifeCycleEventConfiguration</code> object that you can
use to configure the Shutdown event to specify an execution timeout and
enable or disable Elastic Load Balancer connection draining.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LayerId = "string"
    )

### Request syntax

    svc$create_layer(
      StackId = "string",
      Type = "aws-flow-ruby"|"ecs-cluster"|"java-app"|"lb"|"web"|"php-app"|"rails-app"|"nodejs-app"|"memcached"|"db-master"|"monitoring-master"|"custom",
      Name = "string",
      Shortname = "string",
      Attributes = list(
        "string"
      ),
      CloudWatchLogsConfiguration = list(
        Enabled = TRUE|FALSE,
        LogStreams = list(
          list(
            LogGroupName = "string",
            DatetimeFormat = "string",
            TimeZone = "LOCAL"|"UTC",
            File = "string",
            FileFingerprintLines = "string",
            MultiLineStartPattern = "string",
            InitialPosition = "start_of_file"|"end_of_file",
            Encoding = "ascii"|"big5"|"big5hkscs"|"cp037"|"cp424"|"cp437"|"cp500"|"cp720"|"cp737"|"cp775"|"cp850"|"cp852"|"cp855"|"cp856"|"cp857"|"cp858"|"cp860"|"cp861"|"cp862"|"cp863"|"cp864"|"cp865"|"cp866"|"cp869"|"cp874"|"cp875"|"cp932"|"cp949"|"cp950"|"cp1006"|"cp1026"|"cp1140"|"cp1250"|"cp1251"|"cp1252"|"cp1253"|"cp1254"|"cp1255"|"cp1256"|"cp1257"|"cp1258"|"euc_jp"|"euc_jis_2004"|"euc_jisx0213"|"euc_kr"|"gb2312"|"gbk"|"gb18030"|"hz"|"iso2022_jp"|"iso2022_jp_1"|"iso2022_jp_2"|"iso2022_jp_2004"|"iso2022_jp_3"|"iso2022_jp_ext"|"iso2022_kr"|"latin_1"|"iso8859_2"|"iso8859_3"|"iso8859_4"|"iso8859_5"|"iso8859_6"|"iso8859_7"|"iso8859_8"|"iso8859_9"|"iso8859_10"|"iso8859_13"|"iso8859_14"|"iso8859_15"|"iso8859_16"|"johab"|"koi8_r"|"koi8_u"|"mac_cyrillic"|"mac_greek"|"mac_iceland"|"mac_latin2"|"mac_roman"|"mac_turkish"|"ptcp154"|"shift_jis"|"shift_jis_2004"|"shift_jisx0213"|"utf_32"|"utf_32_be"|"utf_32_le"|"utf_16"|"utf_16_be"|"utf_16_le"|"utf_7"|"utf_8"|"utf_8_sig",
            BufferDuration = 123,
            BatchCount = 123,
            BatchSize = 123
          )
        )
      ),
      CustomInstanceProfileArn = "string",
      CustomJson = "string",
      CustomSecurityGroupIds = list(
        "string"
      ),
      Packages = list(
        "string"
      ),
      VolumeConfigurations = list(
        list(
          MountPoint = "string",
          RaidLevel = 123,
          NumberOfDisks = 123,
          Size = 123,
          VolumeType = "string",
          Iops = 123,
          Encrypted = TRUE|FALSE
        )
      ),
      EnableAutoHealing = TRUE|FALSE,
      AutoAssignElasticIps = TRUE|FALSE,
      AutoAssignPublicIps = TRUE|FALSE,
      CustomRecipes = list(
        Setup = list(
          "string"
        ),
        Configure = list(
          "string"
        ),
        Deploy = list(
          "string"
        ),
        Undeploy = list(
          "string"
        ),
        Shutdown = list(
          "string"
        )
      ),
      InstallUpdatesOnBoot = TRUE|FALSE,
      UseEbsOptimizedInstances = TRUE|FALSE,
      LifecycleEventConfiguration = list(
        Shutdown = list(
          ExecutionTimeout = 123,
          DelayUntilElbConnectionsDrained = TRUE|FALSE
        )
      )
    )
