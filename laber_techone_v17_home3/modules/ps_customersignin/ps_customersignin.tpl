<div id="_desktop_user_info" class="pull-right">
	<div class="laberUserInfo dropdown js-dropdown ">
		<div class="expand-more" data-toggle="dropdown">
			<div class="laberUser">
				<p class="nameuser">
					{if $logged} 
						<span>{l s='Hello!' d='Shop.Theme.Actions'}</span> 
						<a class="account"
							href="{$my_account_url}"
							title="{$customerName}"
							rel="nofollow">
							{$customerName}
						</a>
					{else}
					<span>{l s='Login / Sign up' d='Shop.Theme.Actions'}</span>
					{/if}
				</p>
			</div>
		</div>
		<div class="laber-user-info dropdown-menu">
		  <div class="user-info">
			
			{if $logged}
			<div class="signin">
			  <a class="logout"
				href="{$logout_url}"
				rel="nofollow">
				{l s='Sign out' d='Shop.Theme.Actions'}
			  </a>
			</div>
			<a class="laberMyAccount" href="{$urls.pages.my_account}">{l s='My Account' d='Shop.Theme'}</a>
			{else}
				<div class="signin">
				<a href="{$my_account_url}"
				title="{l s='Log in to your customer account' d='Shop.Theme.CustomerAccount'}"
				rel="nofollow">
					{l s='Sign in' d='Shop.Theme.Actions'}
				</a>
				</div>
				<a class="register" href="{$urls.pages.register}">
					{l s='Register' d='Shop.Theme.Actions'}
				</a>
			{/if}
		  </div>
		</div>
	</div>
</div>