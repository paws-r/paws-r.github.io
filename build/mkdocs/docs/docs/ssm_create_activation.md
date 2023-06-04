<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_create_activation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates an activation code and activation ID you can use to register your on-premises servers, edge devices, or virtual machine (VM) with Amazon Web Services Systems Manager

### Description

Generates an activation code and activation ID you can use to register
your on-premises servers, edge devices, or virtual machine (VM) with
Amazon Web Services Systems Manager. Registering these machines with
Systems Manager makes it possible to manage them using Systems Manager
capabilities. You use the activation code and ID when installing SSM
Agent on machines in your hybrid environment. For more information about
requirements for managing on-premises machines using Systems Manager,
see [Setting up Amazon Web Services Systems Manager for hybrid
environments](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances.html)
in the *Amazon Web Services Systems Manager User Guide*.

Amazon Elastic Compute Cloud (Amazon EC2) instances, edge devices, and
on-premises servers and VMs that are configured for Systems Manager are
all called *managed nodes*.

### Usage

    ssm_create_activation(Description, DefaultInstanceName, IamRole,
      RegistrationLimit, ExpirationDate, Tags, RegistrationMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_create_activation_:_Description">Description</code></td>
<td><p>A user-defined description of the resource that you want to
register with Systems Manager.</p>
<p>Don't enter personally identifiable information in this
field.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_activation_:_DefaultInstanceName">DefaultInstanceName</code></td>
<td><p>The name of the registered, managed node as it will appear in the
Amazon Web Services Systems Manager console or when you use the Amazon
Web Services command line tools to list Systems Manager resources.</p>
<p>Don't enter personally identifiable information in this
field.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_create_activation_:_IamRole">IamRole</code></td>
<td><p>[required] The name of the Identity and Access Management (IAM)
role that you want to assign to the managed node. This IAM role must
provide AssumeRole permissions for the Amazon Web Services Systems
Manager service principal <code>ssm.amazonaws.com</code>. For more
information, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-service-role.html">Create
an IAM service role for a hybrid environment</a> in the <em>Amazon Web
Services Systems Manager User Guide</em>.</p>
<p>You can't specify an IAM service-linked role for this parameter. You
must create a unique role.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_activation_:_RegistrationLimit">RegistrationLimit</code></td>
<td><p>Specify the maximum number of managed nodes you want to register.
The default value is <code>1</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_create_activation_:_ExpirationDate">ExpirationDate</code></td>
<td><p>The date by which this activation request should expire, in
timestamp format, such as "2021-07-07T00:00:00". You can specify a date
up to 30 days in advance. If you don't provide an expiration date, the
activation code expires in 24 hours.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_create_activation_:_Tags">Tags</code></td>
<td><p>Optional metadata that you assign to a resource. Tags enable you
to categorize a resource in different ways, such as by purpose, owner,
or environment. For example, you might want to tag an activation to
identify which servers or virtual machines (VMs) in your on-premises
environment you intend to activate. In this case, you could specify the
following key-value pairs:</p>
<ul>
<li><p><code
style="white-space: pre;">⁠Key=OS,Value=Windows⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠Key=Environment,Value=Production⁠</code></p></li>
</ul>
<p>When you install SSM Agent on your on-premises servers and VMs, you
specify an activation ID and code. When you specify the activation ID
and code, tags assigned to the activation are automatically applied to
the on-premises servers or VMs.</p>
<p>You can't add tags to or delete tags from an existing activation. You
can tag your on-premises servers, edge devices, and VMs after they
connect to Systems Manager for the first time and are assigned a managed
node ID. This means they are listed in the Amazon Web Services Systems
Manager console with an ID that is prefixed with "mi-". For information
about how to add tags to your managed nodes, see
<code>add_tags_to_resource</code>. For information about how to remove
tags from your managed nodes, see
<code>remove_tags_from_resource</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_create_activation_:_RegistrationMetadata">RegistrationMetadata</code></td>
<td><p>Reserved for internal use.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActivationId = "string",
      ActivationCode = "string"
    )

### Request syntax

    svc$create_activation(
      Description = "string",
      DefaultInstanceName = "string",
      IamRole = "string",
      RegistrationLimit = 123,
      ExpirationDate = as.POSIXct(
        "2015-01-01"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      RegistrationMetadata = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
