<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_register_container_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent

### Description

This action is only used by the Amazon ECS agent, and it is not intended
for use outside of the agent.

Registers an EC2 instance into the specified cluster. This instance
becomes available to place containers on.

### Usage

    ecs_register_container_instance(cluster, instanceIdentityDocument,
      instanceIdentityDocumentSignature, totalResources, versionInfo,
      containerInstanceArn, attributes, platformDevices, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_register_container_instance_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
to register your container instance with. If you do not specify a
cluster, the default cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_register_container_instance_:_instanceIdentityDocument">instanceIdentityDocument</code></td>
<td><p>The instance identity document for the EC2 instance to register.
This document can be found by running the following command from the
instance: <code
style="white-space: pre;">⁠curl http://169.254.169.254/latest/dynamic/instance-identity/document/⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_register_container_instance_:_instanceIdentityDocumentSignature">instanceIdentityDocumentSignature</code></td>
<td><p>The instance identity document signature for the EC2 instance to
register. This signature can be found by running the following command
from the instance: <code
style="white-space: pre;">⁠curl http://169.254.169.254/latest/dynamic/instance-identity/signature/⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="ecs_register_container_instance_:_totalResources">totalResources</code></td>
<td><p>The resources available on the instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_register_container_instance_:_versionInfo">versionInfo</code></td>
<td><p>The version information for the Amazon ECS container agent and
Docker daemon that runs on the container instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_register_container_instance_:_containerInstanceArn">containerInstanceArn</code></td>
<td><p>The ARN of the container instance (if it was previously
registered).</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_register_container_instance_:_attributes">attributes</code></td>
<td><p>The container instance attributes that this container instance
supports.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_register_container_instance_:_platformDevices">platformDevices</code></td>
<td><p>The devices that are available on the container instance. The
only supported device type is a GPU.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_register_container_instance_:_tags">tags</code></td>
<td><p>The metadata that you apply to the container instance to help you
categorize and organize them. Each tag consists of a key and an optional
value. You define both.</p>
<p>The following basic restrictions apply to tags:</p>
<ul>
<li><p>Maximum number of tags per resource - 50</p></li>
<li><p>For each resource, each tag key must be unique, and each tag key
can have only one value.</p></li>
<li><p>Maximum key length - 128 Unicode characters in UTF-8</p></li>
<li><p>Maximum value length - 256 Unicode characters in UTF-8</p></li>
<li><p>If your tagging schema is used across multiple services and
resources, remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _ :
/ @.</p></li>
<li><p>Tag keys and values are case-sensitive.</p></li>
<li><p>Do not use <code style="white-space: pre;">⁠aws:⁠</code>, <code
style="white-space: pre;">⁠AWS:⁠</code>, or any upper or lowercase
combination of such as a prefix for either keys or values as it is
reserved for Amazon Web Services use. You cannot edit or delete tag keys
or values with this prefix. Tags with this prefix do not count against
your tags per resource limit.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      containerInstance = list(
        containerInstanceArn = "string",
        ec2InstanceId = "string",
        capacityProviderName = "string",
        version = 123,
        versionInfo = list(
          agentVersion = "string",
          agentHash = "string",
          dockerVersion = "string"
        ),
        remainingResources = list(
          list(
            name = "string",
            type = "string",
            doubleValue = 123.0,
            longValue = 123,
            integerValue = 123,
            stringSetValue = list(
              "string"
            )
          )
        ),
        registeredResources = list(
          list(
            name = "string",
            type = "string",
            doubleValue = 123.0,
            longValue = 123,
            integerValue = 123,
            stringSetValue = list(
              "string"
            )
          )
        ),
        status = "string",
        statusReason = "string",
        agentConnected = TRUE|FALSE,
        runningTasksCount = 123,
        pendingTasksCount = 123,
        agentUpdateStatus = "PENDING"|"STAGING"|"STAGED"|"UPDATING"|"UPDATED"|"FAILED",
        attributes = list(
          list(
            name = "string",
            value = "string",
            targetType = "container-instance",
            targetId = "string"
          )
        ),
        registeredAt = as.POSIXct(
          "2015-01-01"
        ),
        attachments = list(
          list(
            id = "string",
            type = "string",
            status = "string",
            details = list(
              list(
                name = "string",
                value = "string"
              )
            )
          )
        ),
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        healthStatus = list(
          overallStatus = "OK"|"IMPAIRED"|"INSUFFICIENT_DATA"|"INITIALIZING",
          details = list(
            list(
              type = "CONTAINER_RUNTIME",
              status = "OK"|"IMPAIRED"|"INSUFFICIENT_DATA"|"INITIALIZING",
              lastUpdated = as.POSIXct(
                "2015-01-01"
              ),
              lastStatusChange = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$register_container_instance(
      cluster = "string",
      instanceIdentityDocument = "string",
      instanceIdentityDocumentSignature = "string",
      totalResources = list(
        list(
          name = "string",
          type = "string",
          doubleValue = 123.0,
          longValue = 123,
          integerValue = 123,
          stringSetValue = list(
            "string"
          )
        )
      ),
      versionInfo = list(
        agentVersion = "string",
        agentHash = "string",
        dockerVersion = "string"
      ),
      containerInstanceArn = "string",
      attributes = list(
        list(
          name = "string",
          value = "string",
          targetType = "container-instance",
          targetId = "string"
        )
      ),
      platformDevices = list(
        list(
          id = "string",
          type = "GPU"
        )
      ),
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
