global.roomTarget = -1;
global.midTransition = false;
function TransitionPlaceSequence(_type)
{
	if (layer_exists("trasition")) layer_destroy("transtion");
	var _lay = layer_create(-9999,"transition");
	layer_sequence_create(_lay,0,0,_type);
}

function transitionStart(_roomTarget,_typeOut,_typeIn)
{
	if (!global.midTransition)
	{
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget);
		TransitionPlaceSequence(_typeIn);
		layer_reset_target_room();
		return true;
	}
	else return false;
}

//Called as a moment at the end of an "Out" transition sequence
function TransitionChangeRoom()
{
	room_goto(global.roomTarget);
}

//Called as a moment at the end of an "In" transition sequence
function TransitionFinished()
{
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
}