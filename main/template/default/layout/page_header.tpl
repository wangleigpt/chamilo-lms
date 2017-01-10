<div id="navigation" class="notification-panel">
    {{ help_content }}
    {{ bug_notification }}
</div>
{% block topbar %}
    {% include template ~ "/layout/topbar.tpl" %}
{% endblock %}
<div class="extra-header">{{ header_extra_content }}</div>
<header id="header-section">
<section>
    <div class="container">
	<div class="row">
	    <div class="col-md-3">
	    	<div class="logo">
                {{ logo }}
            </div>
	    </div>
            <div class="col-md-9">
                <div class="col-sm-4">
                    {% if plugin_header_left is not null %}
                    <div id="plugin_header_left">
                        {{ plugin_header_left }}
                    </div>
                    {% endif %}
                </div>
                <div class="col-sm-4">
                    {% if plugin_header_center is not null %}
                    <div id="plugin_header_center">
                        {{ plugin_header_center }}
                    </div>
                    {% endif %}
                </div>
                <div class="col-sm-4">
                    {% if plugin_header_right is not null %}
                    <div id="plugin_header_right">
                        {{ plugin_header_right }}
                    </div>
                    {% endif %}
                     <script>
                       $(document).ready(function() {
                            $.ajax({
                                type: "GET",
                                url: "{{ _p.web_main }}inc/ajax/online.ajax.php?a=get_users_online",
                                success: function(data) {
                                    $("#online_notification").html(data);
                                }
                            });
                        });
                       </script>
                    <div class="section-notifications">
                        <ul id="notifications" class="nav nav-pills pull-right">
                            <span id="online_notification"></span>
                        </ul>
                    </div>
                    {{ accessibility }}
                </div>
            </div>
        </div>
    </div>
</section>
{% block menu %}
    {% include template ~ "/layout/menu.tpl" %}
{% endblock %}
</header>
{% include template ~ "/layout/course_navigation.tpl" %}