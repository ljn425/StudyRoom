<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="draggable" class="ui-widget-content">
	<a href="#" title="010-2222-2222" data-toggle="popover"
		data-trigger="hover" data-content="aa">1</a><br> <a href="#"
		data-toggle="modal" data-target="#myModal">정우성</a>
	<div class="container">
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<span>좌석 상세정보</span>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<form action="/action_page.php">
							<input name="firstname" Placeholder="좌석"> <input
								name="firstname" Placeholder="이름"> <input
								name="firstname" Placeholder="가입일"> <input
								name="firstname" Placeholder="종료일"> <input
								name="firstname" Placeholder="전화번호"> <input
								name="firstname" Placeholder="성별"> <input
								name="firstname" Placeholder="이메일"><br/>
							<input type="submit" value="등록">
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>