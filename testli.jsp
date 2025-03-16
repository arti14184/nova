private createNewUser = async (): Promise<void> => {
    const POPUP_RESULT = await this.openUserPopup({
        new_user : true,
        user_email : '',
        access_roles : userPageData.Json.access_roles.map(role => ({
			role : role.name,
			public_name : role.public_name
		})),
		user_enabled : true
    });
	const RESOPNSE = POPUP_RESULT.value;
	if(POPUP_RESULT.isDismissed || typeof RESPONSE === "undefined")
		return;
		Message.showSuccessToast('User created');
		this.loadNewUser(RESPONSE.user_email);
}