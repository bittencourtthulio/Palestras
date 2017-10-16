import { Template } from 'meteor/templating';
import { ReactiveVar } from 'meteor/reactive-var';

import './main.html';

Template.cadastro.helpers({
	lista : function() {
		return Emails.find();
	}
});

Template.cadastro.events({
	'submit form' : function(e, template) {
		e.preventDefault();
		var email = template.find('[data-email]').value;
		Emails.insert({ valor : email }, function(error, id) {
			if (error) {
				console.error(error);
			}
			console.log(id);
		});
	},
	'click #excluir' : function (e) {
		Emails.remove(this._id);
	}
});