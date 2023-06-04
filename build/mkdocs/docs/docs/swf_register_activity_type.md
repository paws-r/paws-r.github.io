<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_register_activity_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a new activity type along with its configuration settings in the specified domain

### Description

Registers a new *activity type* along with its configuration settings in
the specified domain.

A `TypeAlreadyExists` fault is returned if the type already exists in
the domain. You cannot change any configuration settings of the type
after its registration, and it must be registered as a new version.

**Access Control**

You can use IAM policies to control this action's access to Amazon SWF
resources as follows:

-   Use a `Resource` element with the domain name to limit the action to
    only specified domains.

-   Use an `Action` element to allow or deny permission to call this
    action.

-   Constrain the following parameters by using a `Condition` element
    with the appropriate keys.

    -   `defaultTaskList.name`: String constraint. The key is
        `swf:defaultTaskList.name`.

    -   `name`: String constraint. The key is `swf:name`.

    -   `version`: String constraint. The key is `swf:version`.

If the caller doesn't have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute's `cause` parameter is set
to `OPERATION_NOT_PERMITTED`. For details and example IAM policies, see
[Using IAM to Manage Access to Amazon SWF
Workflows](https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the *Amazon SWF Developer Guide*.

### Usage

    swf_register_activity_type(domain, name, version, description,
      defaultTaskStartToCloseTimeout, defaultTaskHeartbeatTimeout,
      defaultTaskList, defaultTaskPriority, defaultTaskScheduleToStartTimeout,
      defaultTaskScheduleToCloseTimeout)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="swf_register_activity_type_:_domain">domain</code></td>
<td><p>[required] The name of the domain in which this activity is to be
registered.</p></td>
</tr>
<tr class="even">
<td><code id="swf_register_activity_type_:_name">name</code></td>
<td><p>[required] The name of the activity type within the domain.</p>
<p>The specified string must not contain a <code>:</code> (colon),
<code>/</code> (slash), <code>|</code> (vertical bar), or any control
characters (<code style="white-space: pre;">⁠U+0000`-`U+001f⁠</code> |
<code style="white-space: pre;">⁠U+007f`-`U+009f⁠</code>). Also, it must
<em>not</em> be the literal string <code>arn</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="swf_register_activity_type_:_version">version</code></td>
<td><p>[required] The version of the activity type.</p>
<p>The activity type consists of the name and version, the combination
of which must be unique within the domain.</p>
<p>The specified string must not contain a <code>:</code> (colon),
<code>/</code> (slash), <code>|</code> (vertical bar), or any control
characters (<code style="white-space: pre;">⁠U+0000`-`U+001f⁠</code> |
<code style="white-space: pre;">⁠U+007f`-`U+009f⁠</code>). Also, it must
<em>not</em> be the literal string <code>arn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_register_activity_type_:_description">description</code></td>
<td><p>A textual description of the activity type.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_register_activity_type_:_defaultTaskStartToCloseTimeout">defaultTaskStartToCloseTimeout</code></td>
<td><p>If set, specifies the default maximum duration that a worker can
take to process tasks of this activity type. This default can be
overridden when scheduling an activity task using the
<code>ScheduleActivityTask</code> Decision.</p>
<p>The duration is specified in seconds, an integer greater than or
equal to <code>0</code>. You can use <code>NONE</code> to specify
unlimited duration.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_register_activity_type_:_defaultTaskHeartbeatTimeout">defaultTaskHeartbeatTimeout</code></td>
<td><p>If set, specifies the default maximum time before which a worker
processing a task of this type must report progress by calling
<code>record_activity_task_heartbeat</code>. If the timeout is exceeded,
the activity task is automatically timed out. This default can be
overridden when scheduling an activity task using the
<code>ScheduleActivityTask</code> Decision. If the activity worker
subsequently attempts to record a heartbeat or returns a result, the
activity worker receives an <code>UnknownResource</code> fault. In this
case, Amazon SWF no longer considers the activity task to be valid; the
activity worker should clean up the activity task.</p>
<p>The duration is specified in seconds, an integer greater than or
equal to <code>0</code>. You can use <code>NONE</code> to specify
unlimited duration.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_register_activity_type_:_defaultTaskList">defaultTaskList</code></td>
<td><p>If set, specifies the default task list to use for scheduling
tasks of this activity type. This default task list is used if a task
list isn't provided when a task is scheduled through the
<code>ScheduleActivityTask</code> Decision.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_register_activity_type_:_defaultTaskPriority">defaultTaskPriority</code></td>
<td><p>The default task priority to assign to the activity type. If not
assigned, then <code>0</code> is used. Valid values are integers that
range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to
<code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate
higher priority.</p>
<p>For more information about setting task priority, see <a
href="https://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting
Task Priority</a> in the <em>in the Amazon SWF Developer
Guide.</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="swf_register_activity_type_:_defaultTaskScheduleToStartTimeout">defaultTaskScheduleToStartTimeout</code></td>
<td><p>If set, specifies the default maximum duration that a task of
this activity type can wait before being assigned to a worker. This
default can be overridden when scheduling an activity task using the
<code>ScheduleActivityTask</code> Decision.</p>
<p>The duration is specified in seconds, an integer greater than or
equal to <code>0</code>. You can use <code>NONE</code> to specify
unlimited duration.</p></td>
</tr>
<tr class="even">
<td><code
id="swf_register_activity_type_:_defaultTaskScheduleToCloseTimeout">defaultTaskScheduleToCloseTimeout</code></td>
<td><p>If set, specifies the default maximum duration for a task of this
activity type. This default can be overridden when scheduling an
activity task using the <code>ScheduleActivityTask</code> Decision.</p>
<p>The duration is specified in seconds, an integer greater than or
equal to <code>0</code>. You can use <code>NONE</code> to specify
unlimited duration.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_activity_type(
      domain = "string",
      name = "string",
      version = "string",
      description = "string",
      defaultTaskStartToCloseTimeout = "string",
      defaultTaskHeartbeatTimeout = "string",
      defaultTaskList = list(
        name = "string"
      ),
      defaultTaskPriority = "string",
      defaultTaskScheduleToStartTimeout = "string",
      defaultTaskScheduleToCloseTimeout = "string"
    )
